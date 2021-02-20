package app.service;

import app.generic.GenericDao;
import app.vo.Admin;
import app.vo.shop.Milk;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;

@Service
public class AdminServiceImpl implements AdminService{

    private final static String statement = Admin.class.getName() + ".";
    @Autowired
    private GenericDao genericDao;


    @Override
    public Integer createBrand(String brand) {
        return genericDao.create(statement+"createBrand",brand);
    }

    public Integer createGoods(Milk goods){
        Integer i = 1;
        try {
//            System.out.println(goods);
            Date date = new Date();
            String format = DateFormatUtils.format(date, "yyyy/MM/dd");
            goods.setCreatetime(format);
            genericDao.updateOrDelete(statement+"createmilk",goods);
        } catch (Exception e) {
            i = 0;
            System.out.println("新建货物错误");
            e.printStackTrace();
        }
        return i;
    }

    public Integer updateOrDeleteGood(Milk milk){
        Integer i = 1;
        try{
            System.out.println("updateOrDeleteGood"+milk.toString());
            genericDao.updateOrDelete(statement+"updatemilk",milk);
        }catch (Exception e){
            i = 0;
            System.out.println("更新或删除货物错误");
            e.printStackTrace();
        }
        return i;
    }

    public Integer deleMilk(Integer gid){
        Integer i = 1;
        try{
            genericDao.updateOrDelete(statement+"delemilk",gid);
        }catch (Exception e){
            i = 0;
            System.out.println("删除货物错误");
            e.printStackTrace();
        }
        return i;
    }


//    登录的逻辑


    @Override
    public HashMap login(Admin role) {
//        0 是 失败码，其它为管理员身份码
        HashMap map = new HashMap();

         try {
             Admin o = genericDao.selectOne(statement + "findadmin", role);
             if (o == null) {
                 map.put("role",0);
                 map.put("url","/");
             }
             if (o.getRole() == 2) {
                 map.put("role",o.getRole());
                 map.put("url","/shop");
             }
             if (o.getRole() == 1) {
                 map.put("role",o.getRole());
                 map.put("url","/main");
             }
         }catch (Exception e){
             map.put("role",0);
             map.put("url","/");
             System.out.println("管理员登录出错了");
         }
        return map;
    }
}
