package app.service.impl;

import app.generic.GenericDao;
import app.vo.Brand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BrandServiceImpl implements app.service.BrandService {

    private static String statement = "app.vo.Brand.";
    @Autowired
    private GenericDao genericDao;

    @Override
    public List<Brand> list() {
        List<Brand> listbrand = genericDao.selectList(statement+"list",null);
        return listbrand ;
    }

    @Override
    public List<Brand> listWithLimit(Map map) {
        List<Brand> listbrand = genericDao.selectList(statement+"list",map);
        return listbrand;
    }

    @Override
    public Brand selectOne(Integer bid) {
        Brand brand = genericDao.selectOne(statement + "selectBrand", bid);
        return brand;
    }

    @Override
    public boolean deleteOne(Integer bid) {
        return false;
    }

    @Override
    public boolean updateOrDeleteOne(Integer bid) {
        return false;
    }

//    销量最好的品牌
    @Override
    public Map sellGoodBrand(Integer gcid) {
        HashMap<Object, Object> map = new HashMap<>(2);
        try {
            List<Brand> brands = genericDao.selectList(statement + "sellgoodbrand", gcid);
            map.put("code",1);
            map.put("result",brands);
        } catch (Exception e) {
            map.put("code",0);
            System.out.println("查询销量最好的品牌出错");
            e.printStackTrace();
        }
        return map;
    }
}
