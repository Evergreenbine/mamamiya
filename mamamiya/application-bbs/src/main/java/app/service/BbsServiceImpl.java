package app.service;

import app.generic.GenericDao;
import app.service.impl.BbsService;
import app.vo.Circle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BbsServiceImpl implements BbsService {

    @Autowired
    private GenericDao genericDao;

    private final static String statement = Circle.class.getName()+".";

    @Override
    public List<Circle> listCircle() {
        List<Circle> circleList = genericDao.selectList(statement+"listCircle",null);
        return circleList;
    }
}
