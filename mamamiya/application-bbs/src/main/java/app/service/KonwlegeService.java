package app.service;

import app.generic.GenericDao;
import app.vo.Circle;
import app.vo.KnowlegeVo;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KonwlegeService {

    @Autowired
    private GenericDao genericDao;

    private final static String statement = Circle.class.getName()+".";

    public KnowlegeVo getKonw(int kid){
        KnowlegeVo  k = genericDao.selectOne(statement + "queryKonwById", kid);
        return k;
    }

    public List<KnowlegeVo> getKonwAll(Integer cata){
        genericDao.selectList("",1,new RowBounds());
        return genericDao.selectList(statement+"querykonw",cata);
    }


}
