package app.service.impl;

import app.generic.GenericDao;
import app.vo.Circle;
import app.vo.News;
import org.checkerframework.checker.units.qual.A;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class NewsService {

    private final static String statement = Circle.class.getName()+".";

    @Autowired
    private GenericDao genericDao;
//    修改标签
    public Integer updateTag(HashMap map){
        int i =1;
        try{
            genericDao.updateOrDelete(statement+"updateTag",map);
        }catch (Exception e){
            i =0;
        }
        return i;
    }

    public  List<ArrayList> listAll(HashMap map){
        try{

            List o = genericDao.selectList(statement + "querytag", null);

            List<News> objects = genericDao.selectList(statement + "queryallnew", map);
            List<ArrayList> arrayLists = new ArrayList<>(o.size());
            for (Object o1 : o) {
                ArrayList arr = new ArrayList();

                for (News object : objects) {
                    if (arr.size() > 3){
                        break;
                    }
                    if (o1 == object.getIcid()){
                        arr.add(object);
                    }
                }
                arrayLists.add(arr);
            }

            return arrayLists;
        }catch (Exception e){
            System.out.println("查询所有资讯错误");
            e.printStackTrace();
            return null;
        }
    }
}
