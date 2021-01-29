package app.service.impl;

import app.generic.GenericDao;
import app.service.MilkService;
import app.vo.Milk;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
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
}
