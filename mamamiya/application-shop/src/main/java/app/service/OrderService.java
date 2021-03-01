package app.service;

import app.generic.GenericDao;
import app.vo.Milk;
import app.vo.Order;
import app.vo.OrderDetail;
import cn.hutool.core.date.DateUtil;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Service
public class OrderService {
    private final static String statement = Order.class.getName()+".";
    private final static String statemilk = Milk.class.getName()+".";

    @Autowired
    private GenericDao genericDao;
//    private  static Map<Object,Object> ordermap  = new HashMap<>();

//    获取订单编号
    public  String getOrderId(){
        Date date = new Date();
        String day = DateFormatUtils.format(date, "yyyyMMddHHmmss");
        Random random = new Random();
        int i = random.nextInt(10000);
        return day+i;
    }

//  购买操作
    @Transactional
    public Map createOrder(HttpServletRequest req, List<Milk> milk){
        Map map = new HashMap<>();
        String useraccount = req.getParameter("useraccount");
        int i = Integer.parseInt(useraccount);
        String needmoney = req.getParameter("needmoney");
        double needmoneyy = Double.parseDouble(needmoney);
        double v =0;

//       记录总数量
        Integer total = 0;
//      购物车里都有库存,库存不足则直接失败
        for (Milk m : milk) {
            Integer store = genericDao.selectOne(statemilk + "querystore", m.getGid());
            if (store-m.getCount() < 0){
                total = total+m.getCount();
                map.put("code",0);
                map.put("message",m.getGid()+m.getGname()+"库存不足");
                return  map;
            }
        }
//      够库存就进行创建订单操作
//          // (#{orderid},#{address},#{state},#{totalmount},#{totalnums},#{useraccount},#{createtime},#{updatetime})
        Order order = new Order();
//        创建时间
        String createtime = DateUtil.format(new Date(),"yyyy/MM/dd/HH/mm/ss");
//            库存足,则进行创建订单操作
        String orderid = this.getOrderId();
        order.setOrderid(orderid);
        order.setTotalmount(needmoneyy);
        System.out.println("总数量是"+total);
        order.setTotalnums(total);
        order.setUseraccount(i);
        order.setCreatetime(createtime);

//        查询用户余额
        double monney = genericDao.selectOne(statement + "querymonney", i);

        if (monney-needmoneyy>=0){
//            用户余额充足的话,则进行购买操作
           try {
               double totalmmoney = 0;
            for (Milk m : milk) {
                HashMap<Object, Object> param = new HashMap<>();
                param.put("gid",m.getGid());
                param.put("count",m.getCount());
                totalmmoney += m.getPrice()*m.getCount();
                param.put("monney",m.getPrice()*m.getCount());
                param.put("useraccount",useraccount);
//                        减库存
                genericDao.updateOrDelete(statemilk+"purchase",param);
//                        减金额
                genericDao.updateOrDelete(statemilk+"demoney",param);
//                        插入购买记录表
//                       再做一件偷懒的傻逼的事，乱写的这里
//                        这里应该由前端传过来的，但是我懒得去改前端的购物车了，泰马烦了，偷懒
//                        (#{gid},#{useraccount},#{orderid})
                param.put("orderid",orderid);

                //                插入订单详情表
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setOrderid(orderid);
                orderDetail.setGid(m.getGid());
                orderDetail.setNums(m.getCount());
                orderDetail.setPrice(m.getPrice());

                genericDao.create(statement+"createorderdetail",orderDetail);

                for (int j = 0; j < m.getCount(); j++) {
                    genericDao.create(statemilk+"newpurchaserecord",param);
                }


            }

            //            改变订单状态,设置状态为已支付状态
               order.setState(2);
               order.setPaymoney(totalmmoney);

             genericDao.create(statement+"createoreder",order);
             map.put("code",1);
             map.put("message","创建订单成功");
//               throw new NullPointerException("hha ");

           }catch (Exception e){
               order.setState(1);
               System.out.println("支付过程出错");
               e.printStackTrace();
           }

        }else {
            System.out.println("金额不足");
            for (Milk m : milk) {
//                插入订单详情表,支付失败
                OrderDetail orderDetail = new OrderDetail();

                orderDetail.setOrderid(orderid);
                System.out.println("我服了"+orderDetail.getOrderid());
                orderDetail.setGid(m.getGid());
                orderDetail.setNums(m.getCount());
                orderDetail.setPrice(m.getPrice());

                genericDao.create(statement+"createorderdetail",orderDetail);

            }

//            int u = 10/0;
//            设置未支付
            order.setState(1);
            System.out.println(order.getState());
            genericDao.create(statement+"createoreder",order);

            map.put("code",0);
            map.put("message","支付失败");
        }
// 返回订单
        HashMap<Object, Object> map1 = new HashMap<>();
        map1.put("orderid",orderid);
        Map orderinfo = genericDao.selectOne(statement + "selectorder", map1);
//        返回订单详情
//        List<Map> orderdetails = genericDao.selectList(statement + "queryordertail", orderid);
        map.put("orderinfo",orderinfo);

        return map;
    }


//   查询具体订单
    public Map checkOrder(String orederid){
        HashMap<Object, Object> map1 = new HashMap<>();
        map1.put("orderid",orederid);
        Map orderinfo = genericDao.selectOne(statement + "selectorder", map1);

        List<Map> orderdetails = genericDao.selectList(statement + "queryordertail", orederid);
        HashMap<Object, Object> map = new HashMap<>();
        map.put("orderinfo",orderinfo);
        map.put("orderdetail",orderdetails);

        return map;
    }

// 查询所有订单 查询所有订单的渲染页面
    public Map checkAllOrder(Map params){
//        总结果
        List<Map> orderinfoarr = new ArrayList<>();
        List<List<Map>> orderdetailarr = new ArrayList<>();

//        找出所有订单
        List<Map> order = genericDao.selectList(statement + "selectorder", params);
        System.out.println("order订单列表是");
//        遍历订单
        for (Map map : order) {
//            订单集添加订单
            orderinfoarr.add(map);
//            根据订单查询订单详情,将订单map丢进去,因为订单map自带 orederid
            List<Map> orderdetail = genericDao.selectList(statement + "queryordertail", map);
//            将订单详情加入订单详情数组
            orderdetailarr.add(orderdetail);
        }

        HashMap<Object, Object> result = new HashMap<>();
        result.put("od",orderinfoarr);
        result.put("odd",orderdetailarr);

        return result;
    }

//    更新订单状态
    public Integer updateOrder(Map map){
        int i =1;
        try {
            genericDao.updateOrDelete(statement+"updateorder",map);
        } catch (Exception e) {
            i =0;
            e.printStackTrace();
        }
        return i;

    }

//    继续支付
    @Transactional
    public Integer continPay(HttpServletRequest req,Order order){
//        获取用户
        String useraccount = req.getParameter("useraccount");


        Map specificorder = this.checkOrder(order.getOrderid());
//        拿出订单信息
         Map orderinfo  = (Map) specificorder.get("orderinfo");
//        拿出订单详情
        List<Map> orderdetail = (List<Map>) specificorder.get("orderdetail");

//        对订单详情进行操作
//      总价变量
        Double totalmmoney = 0d;
//      用户余额
        double monney = genericDao.selectOne(statement + "querymonney", Integer.parseInt(useraccount));
        System.out.println(monney);
//      订单总价
        double totalmount = (Double) orderinfo.get("totalmount");

        try{
//            要总数量没用，但要总金额是有用的
            if (monney - totalmount >= 0){

//                进行减库存操作
                for (Map m : orderdetail) {
//                    构建参数对象
                    HashMap<Object, Object> param = new HashMap<>();
//                    进行减库存操作
                    Integer nums = (Integer) m.get("nums");
//                    查库存
                    Integer store = genericDao.selectOne(statemilk + "querystore", m.get("gid"));
                    if(store - nums >= 0){
//                        进行减库存操作
                        param.put("count",nums);
                        param.put("gid",m.get("gid"));

                        genericDao.updateOrDelete(statemilk+"purchase",param);

//                        进行减金额操作 计算件数和金额
                        double price =(Integer)m.get("nums")* (Double) m.get("price");
                        System.out.println("price是"+price);
                        param.put("monney",price);
                        param.put("useraccount",useraccount);


                        genericDao.updateOrDelete(statemilk + "demoney", param);



//                        插入记录表
                        param.put("orderid",m.get("orderid"));

                        for (int j = 0; j < (Integer) m.get("nums"); j++) {
                            genericDao.create(statemilk+"newpurchaserecord",param);
                        }
//

                    }else {
                        throw  new Exception("库存不足");
                    }



                }

//                更新订单状态

                HashMap<Object, Object> map = new HashMap<>();
                map.put("orderid",order.getOrderid());
                map.put("state",3);
                String updatetime = DateUtil.format(new Date(),"yyyy/MM/dd/HH/mm/ss");
                map.put("updatetime",updatetime);
                updateOrder(map);

                return 1;

            }else {
                throw new Exception("余额不足");
            }
        }catch (Exception e){
            e.printStackTrace();
            return 0;

        }
    }


    @Transactional
    public Integer cancelOrder(String orderid,String useraccount) {
        try {

//            找出对应的订单
            Map specificorder = this.checkOrder(orderid);
            //        拿出订单信息
            Map orderinfo = (Map) specificorder.get("orderinfo");
            useraccount = (String) orderinfo.get("useraccount");
//        拿出订单详情
            List<Map> orderdetail = (List<Map>) specificorder.get("orderdetail");

//            取消订单
//            1、判断是否支付，未支付直接改状态，已支付要退库存
            if ((Integer) orderinfo.get("state") == 1) {
//                直接改成关闭状态
                HashMap<Object, Object> map = new HashMap<>();
                map.put("orderid", orderid);
                map.put("state", 6);
                String updatetime = DateUtil.format(new Date(), "yyyy/MM/dd/HH/mm/ss");
                map.put("updatetime", updatetime);
                updateOrder(map);


            } else {

                for (Map m : orderdetail) {
//                    构建参数对象
                    HashMap<Object, Object> param = new HashMap<>();
//                    进行减库存操作
                    Integer nums = (Integer) m.get("nums");


//                        进行加库存操作
                    param.put("count", nums);
                    param.put("gid", m.get("gid"));

                    genericDao.updateOrDelete(statemilk + "addstore", param);

//                        进行减金额操作 计算件数和金额
                    double price = (Integer) m.get("nums") * (Double) m.get("price");

                    param.put("monney", price);
                    param.put("useraccount", useraccount);


                    genericDao.updateOrDelete(statemilk + "addmoney", param);


//                上面在循环里面做，这里删除购买记录是直接根据orederid删
                    HashMap<Object, Object> mm = new HashMap<>();
                    mm.put("orderid", orderid);
                    genericDao.updateOrDelete(statemilk + "delerecordgood", mm);

//                删除购买记录 不然评价可以评论没买成功的商品，订单评价就不做了
//                改状态

                    mm.put("state", 6);
                    String updatetime = DateUtil.format(new Date(), "yyyy/MM/dd/HH/mm/ss");
                    mm.put("updatetime", updatetime);
                    this.updateOrder(mm);

                }
                return 1;


            }
        } catch (Exception e) {

            e.printStackTrace();
            return 0;
        }

        return 0;
    }
}



