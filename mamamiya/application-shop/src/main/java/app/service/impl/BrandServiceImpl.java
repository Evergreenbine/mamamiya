package app.service.impl;

import app.generic.GenericDao;
import app.vo.Brand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    public Brand selectOne(Integer bid) {
        return null;
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
