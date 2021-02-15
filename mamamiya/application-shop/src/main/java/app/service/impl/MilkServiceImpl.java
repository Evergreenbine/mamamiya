package app.service.impl;

import app.generic.GenericDao;
import app.service.MilkService;
import app.vo.Milk;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class MilkServiceImpl implements MilkService {

    private static String statement = "app.vo.Milk.";

    @Autowired
    private GenericDao genericDao;

    @Override
    public List<Milk> list() {
        List<Milk> milks = genericDao.selectList(statement+"list",null);
        System.out.println(milks);
        return milks;
    }

    @Override
    public List<Milk> goodmilklist() {
        List<Milk> milks = genericDao.selectList(statement + "goodmilk", null);
        return milks;
    }

//    带条件查询
    @Override
    public List<Milk> list(Map m) {
        List<Milk> milks = genericDao.selectList(statement + "list", m);
        return milks;
    }

    @Override
    public Integer purchase(List<Milk> milk) {
        for (Milk m : milk) {

            genericDao.updateOrDelete(statement+"purchase",m.getGid());
        }
        return null;
    }
}
