package app.service;

import app.generic.GenericDao;
import app.vo.ShopAdmin;
import app.vo.shop.Goods;
import app.vo.shop.Milk;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService{

    private final static String statement = ShopAdmin.class.getName() + ".";
    @Autowired
    private GenericDao genericDao;

    public Integer createGoods(Goods goods){
        Integer i = 1;
        try {
            genericDao.updateOrDelete(statement+"createmilk",goods);
        } catch (Exception e) {
            i = 0;
            e.printStackTrace();
        }
        return i;
    }

}
