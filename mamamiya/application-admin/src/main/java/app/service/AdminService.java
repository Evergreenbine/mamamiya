package app.service;

import app.vo.shop.Brand;
import app.vo.shop.Goods;
import app.vo.shop.Milk;

public interface AdminService {
//     商品的逻辑
     Integer createGoods(Milk goods);
     Integer updateOrDeleteGood(Milk milk);
     Integer deleMilk(Integer gid);

//     品牌的逻辑
     Integer createBrand(String brand);
}
