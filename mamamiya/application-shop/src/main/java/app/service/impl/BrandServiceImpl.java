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

//    每个品牌的商品数量
    @Override
    public List<Map> countGoodNumsOfBrand(HttpServletRequest req) {
        Integer gcid = null;
        String gcid2 = req.getParameter("gcid");
        if (null != gcid2 && "".equals(gcid2)) {
             gcid = Integer.parseInt(gcid2);
        }
        List<Map> count = genericDao.selectList(statement + "querygoodsnumsofbrand", gcid);
        return count;
    }

//    热销商品
    public List<Map> sellGoodGoods(HttpServletRequest req) {
         Integer gcid = null;
         String gcid2 = req.getParameter("gcid");
         if (null != gcid2 && "".equals(gcid2)) {
             gcid = Integer.parseInt(gcid2);
         }
        String stime = null;
        String etime = null;
        HashMap<Object, Object> map = null;
      if(  null != req.getParameter("stime") && null != req.getParameter("etime")) {
         stime  = req.getParameter("stime").replace('-', '/');
          etime = req.getParameter("etime").replace('-', '/');

        map   = new HashMap<>();
          map.put("stime", stime);
          map.put("etime", etime);
      }
        List<Map> count = genericDao.selectList(statement + "querysellgood", map);
         return count;
    }

//

    @Override
    public List<Map> goodofnums(HttpServletRequest req) {
        Integer gcid = null;
        String gcid2 = req.getParameter("gcid");
        if (null != gcid2 && "".equals(gcid2)) {
            gcid = Integer.parseInt(gcid2);
        }
        String stime = null;
        String etime = null;
        HashMap<Object, Object> map = null;
        if(  null != req.getParameter("stime") && null != req.getParameter("etime")) {
            stime  = req.getParameter("stime").replace('-', '/');
            etime = req.getParameter("etime").replace('-', '/');

            map   = new HashMap<>();
            map.put("stime", stime);
            map.put("etime", etime);
        }


        List<Map> objects = genericDao.selectList(statement + "querygoodnums", map);
        return objects;
    }

    @Override
    public List<Map> orderrate() {

        return genericDao.selectList(statement+"orderrate",null);
    }

//    首页

    @Override
    public List<Map> sellGoodBrandIndex() {
        List<Map> objects = genericDao.selectList(statement + "sellgoodbrandindex", null);
        return objects;
    }
}
