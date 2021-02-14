package app.service;

import app.generic.GenericDao;
import app.vo.ShopAdmin;
import app.vo.shop.Brand;
import app.vo.shop.Goods;
import app.vo.shop.Milk;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService{

    private final static String statement = ShopAdmin.class.getName() + ".";
    @Autowired
    private GenericDao genericDao;


    @Override
    public Integer createBrand(String brand) {
        return genericDao.create(statement+"createBrand",brand);
    }

    public Integer createGoods(Milk goods){
        Integer i = 1;
        try {
            System.out.println(goods);
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




}
