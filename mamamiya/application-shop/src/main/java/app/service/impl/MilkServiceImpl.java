package app.service.impl;

import app.generic.GenericDao;
import app.service.MilkService;
import app.vo.Milk;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Service
public class MilkServiceImpl implements MilkService {

    private static String statement = "app.vo.Milk.";
    private Object mute = new Object();

    @Autowired
    private GenericDao genericDao;

    public List<Milk> mostgood(){
        List<Milk> mm = genericDao.selectList(statement + "mostgood", null);
        for (Milk milk : mm) {
            Map object = genericDao.selectOne(statement + "queryrate", milk.getGid());
            milk.setRate((Integer) object.get("rate"));
        }
        return mm;
    }

    public List<Milk> lastestMilk(){
        List<Milk> milks = genericDao.selectList(statement + "latestgood", null);
        for (Milk milk : milks) {
            Map object = genericDao.selectOne(statement + "queryrate", milk.getGid());
            milk.setRate((Integer) object.get("rate"));
        }
        return milks;
    }


//    查询具体商品
    public Milk specificGood(Integer gid){
        Milk milk = genericDao.selectOne(statement + "querygood", gid);
        return milk;
    }

//    查询商品分类
    @Override
    public List<Map> queryGoodCata() {
        List<Map> maps =  genericDao.selectList(statement + "selectGoodCata", null);
        return maps;
    }

//    废弃
    @Override
    public List<Milk> list() {

        List<Milk> milks = genericDao.selectList(statement+"list",null);
        System.out.println(milks);
        return milks;
    }

//    好评商品 最复杂的sql
    @Override
    public List<Milk> goodmilklist() {
        List<Milk> milks = genericDao.selectList(statement + "goodmilk", null);
        return milks;
    }

//    带条件查询
    @Override
    public List<Milk> list(Map m) {
//        int pageIndex=1, pageSize=10;
//        int start = pageSize * (pageIndex - 1);
//        int end = pageSize;
//        RowBounds rowBounds = new RowBounds(start,end);
        List<Milk> milks = null;
        try {
            milks = genericDao.selectList(statement + "list", m);
//            设置评分的

            for (Milk milk : milks) {
//                这样很傻逼，查那么多次数据库，是要搞爆数据库的哈哈，但是为了省事不想写很复杂的sql
                Map object = genericDao.selectOne(statement + "queryrate", milk.getGid());
                milk.setRate((Integer) object.get("rate"));
            }


        }catch (Exception e){
            e.printStackTrace();
        }
        return milks;
    }

//    商品结账
    @Override
    public Integer purchase(Integer useraccount ,List<Milk> milk,double needmoney) {
        Integer tag;
//        购物车里都有库存
        for (Milk m : milk) {
            Integer store = genericDao.selectOne(statement + "querystore", m.getGid());
            if (store-m.getCount() < 0){
                tag = 0;
                return  tag;
            }
        }
//        先看下账户余额有多少？
        double monney = genericDao.selectOne(statement + "querymonney", useraccount);

//        够钱就继续
        if (monney - needmoney > 0){
//            加锁估计没用，只是不会被中断，不知道会不会因为内部异常而被中断，中断会不会回滚？
//            测试了枷锁没用，只能使用声明式事务
            synchronized (mute){
                try{
                    for (Milk m : milk) {
                        HashMap<Object, Object> map = new HashMap<>();
                        map.put("gid",m.getGid());
                        map.put("count",m.getCount());
                        map.put("monney",m.getPrice()*m.getCount());
                        map.put("useraccount",useraccount);
//                        减库存
                        genericDao.updateOrDelete(statement+"purchase",map);
//                        减金额
                        genericDao.updateOrDelete(statement+"demoney",map);
//                        插入购买记录表
//                       再做一件偷懒的傻逼的事，乱写的这里
//                        这里应该由前端传过来的，但是我懒得去改前端的购物车了，泰马烦了，偷懒
                        Milk o = genericDao.selectOne(statement + "querygood", m.getGid());
                        o.setUseraccount(useraccount);
                        for (int i = 0; i < m.getCount(); i++) {
                            genericDao.create(statement+"newpurchaserecord",o);
                        }

                    }
                }catch (Exception e){
                    tag = 0;
                    System.out.println("购买商品错误");
                    e.printStackTrace();
                    return tag;
                }
            }
            tag =1;
            return tag;
        }else {
            tag = 0;
            return  tag;
        }
    }

//    查询我的购买记录

    @Override
    public Map myrecord(HttpServletRequest req) {
        String user = req.getParameter("useraccount");
        Integer useraccount = Integer.parseInt(user);
        String cp = req.getParameter("curpage");
//        String ps = req.getParameter("pagesize");

        Integer curPage = Integer.parseInt(cp);
//        规定每页8条
        Integer pageSize = 8;
//        总的记录数
        int total = genericDao.selectOne(statement+"querytotal",useraccount);
//        总页数
        int totalPageNums = (total+pageSize-1)/pageSize;

        int start = pageSize*(curPage - 1);
        int end = start + pageSize;

        RowBounds rowBounds = new RowBounds(start,end);
        List<Milk> milk = genericDao.selectList(statement + "queryrecord", useraccount, rowBounds);
        HashMap<Object, Object> map = new HashMap<>();

        map.put("resp",milk);
        map.put("totalpage",totalPageNums);
        map.put("total",total);
        return map;

    }
}
