package app.service;

import app.generic.GenericDao;
import app.vo.Circle;
import app.vo.KnowlegeVo;
import app.vo.Qcata;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
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
//        genericDao.selectList("",1,new RowBounds());
        return genericDao.selectList(statement+"querykonw",cata);
    }

    public Integer queryIsFree(HashMap map){
        Object o = genericDao.selectOne(statement + "queryIsFree", map);
        return o == null ? 0 : 1;
    }

//    知识付费
    public Integer purchase(HashMap map){
        int i = 1;
        try {
//            查询用户余额
            Double monney = genericDao.selectOne(statement + "getmoney", map);
//            价格
            Double price = (Double) map.get("price");
//          余额
            Double remain = monney - price;
//            判断是否够钱
            if(remain >= 0){
//                钱够就做购买操作
//                插入购买记录表

//              减去钱的操作
                map.put("monney",remain);
                genericDao.updateOrDelete(statement + "demoney", map);

//               插入记录表
                genericDao.updateOrDelete(statement + "purchasekonw", map);
            }else{
//                否则购买失败
                i=0;
            }
        }catch (Exception e){
            i=0;
            System.out.println("知识付费失败");
            e.printStackTrace();
        }
        return i;
    }

//    问答服务

//    查询所有问题分类
    public List<Qcata> qcatas(){
        List<Qcata> qcatas = genericDao.selectList(statement + "queryQuesCata", null);
        return qcatas;
    }
}
