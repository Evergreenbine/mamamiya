package app.service;

import app.vo.Admin;
import app.vo.shop.Milk;

import java.util.HashMap;

public interface AdminService {

//     登录的逻辑
     HashMap login(Admin role);

//     商品的逻辑
     Integer createGoods(Milk goods);
     Integer updateOrDeleteGood(Milk milk);
     Integer deleMilk(Integer gid);

//     品牌的逻辑
     Integer createBrand(String brand);
}
