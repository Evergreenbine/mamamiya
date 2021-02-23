package app.service;

import app.vo.Admin;
import app.vo.shop.Brand;
import app.vo.shop.Milk;

import java.util.HashMap;
import java.util.Map;

public interface AdminService {

//     登录的逻辑
     HashMap login(Admin role);

//     商品的逻辑
     Integer createGoods(Milk goods);
     Integer updateOrDeleteGood(Milk milk);
     Integer deleMilk(Integer gid);

//     品牌的逻辑
     Integer createBrand(String brand);
//  查询品牌分类
      Map queryBrandCate();
//保存品牌
     Integer saveBrand(Brand brand);
//列出所有品牌
     Map listBrand(Integer curPage,Integer pageSize,Map params);
}
