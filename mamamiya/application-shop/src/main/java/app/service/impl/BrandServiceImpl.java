package app.service.impl;

import app.generic.GenericDao;
import app.vo.Brand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

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
    public List<Brand> listWithLimit(int limit, HttpServletRequest req) {
        String gcid = req.getParameter("gcid");
        int i = Integer.parseInt(gcid);
        HashMap<Object, Object> map = new HashMap<>();
        map.put("gcid",gcid);
        map.put("limit",limit);
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
}
