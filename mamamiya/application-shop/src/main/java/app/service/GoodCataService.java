package app.service;

import app.generic.GenericDao;
import app.vo.GoodCata;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class GoodCataService {
    @Autowired
    private GenericDao genericDao;
    private static String statement = GoodCata.class.getName()+".";


    public List<Map> likequerygood(HashMap map){
       return genericDao.selectList(statement + "likequerygood", map);
    }

    public Integer createGoodCata(GoodCata goodCata){
       return genericDao.create(statement+"creategoodcata",goodCata);
    }

    public List<Map> queryGoodcata(HttpServletRequest req){
        HashMap<Object, Object> map = new HashMap<>();
        Integer grade = getParameter("grade", req);
        Integer c2 = isNotNull("parrentid", req);
        map.put("grade",grade);
        map.put("parrentid",c2);
        List<Map> objects = genericDao.selectList(statement + "querygoodcata", map);
        return objects;
    }
//
    public Integer isNotNull(String pname,HttpServletRequest req){
        String parameter = req.getParameter(pname);
        if (!StringUtils.isEmpty(parameter)) {
            return Integer.parseInt(parameter);
        }else{
            return null;
        }
    }


    public Integer getParameter(String pname,HttpServletRequest req){
        String parameter = req.getParameter(pname);
        if (!StringUtils.isEmpty(parameter)) {
            return Integer.parseInt(parameter);
        }else {
            throw new NullPointerException("参数为空");
        }
    }

//


}
