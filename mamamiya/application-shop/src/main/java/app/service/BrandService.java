package app.service;

import app.vo.Brand;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public interface BrandService {

    List<Brand> list();

    List<Brand> listWithLimit(Map map);

    Brand selectOne(Integer bid);

    boolean deleteOne(Integer bid);

    boolean updateOrDeleteOne(Integer bid);

//    销量最好的品牌
    Map sellGoodBrand(@PathVariable Integer gcid);





//    查询每个品牌的数量
    List<Map> countGoodNumsOfBrand(HttpServletRequest req);

//
    List<Map> sellGoodGoods(HttpServletRequest req);
// 商品的销售量
    List<Map> goodofnums(HttpServletRequest req);


    List<Map>  orderrate();

}
