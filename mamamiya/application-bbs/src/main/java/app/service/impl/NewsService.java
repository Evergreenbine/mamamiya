package app.service.impl;

import app.generic.GenericDao;
import app.vo.Circle;
import app.vo.News;
import app.vo.ReplyInfo;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.io.unit.DataUnit;
import org.apache.ibatis.session.RowBounds;
import org.checkerframework.checker.units.qual.A;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class NewsService {

    private final static String statement = Circle.class.getName()+".";
    private final static String state = News.class.getName()+".";
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

// 按id查找某个资讯
    public Map  getNewsById(HashMap map){
        Map o = null;
        try {
         o =  genericDao.selectOne(state + "infobycondition", map);
        } catch (Exception e) {
            System.out.println("查询资讯错误");
            e.printStackTrace();
        }
        return o;
    }

    public Integer looknew(HashMap map){
        Integer i = 1;
        try {
            Date date = new Date();
            String format = DateUtil.format(date, "yyyy/MM/dd/HH/mm/ss");
            map.put("time",format);
            genericDao.create(state + "looknews", map);
        } catch (Exception e) {
            i = 0;
            System.out.println("插入浏览记录错误");
            e.printStackTrace();
        }
        return i;
    }

    public  Map listreplyinfo(Integer curPage,Integer pageSize,Map params){
        params.put("ls","replytoinfo");
        Map map = PageHelper(curPage, pageSize, params);
//        一个装楼主的
        ArrayList<Object> louzhu = new ArrayList<>();
//        一个装层主的

        ArrayList<Object> cengzhu = new ArrayList<>();
//
        List<Map> data = (List<Map>) map.get("data");

        for (Map datum : data) {
//            获取useraccount
            Integer useraccount = (Integer) datum.get("useraccount");
            List<Map> mapList = genericDao.selectList(state + "replymyinfo", useraccount);
//            将楼主装进去
            louzhu.add(datum);
//            创建一个数组，装回复楼主的信息
            ArrayList<Object> infos = new ArrayList<>(mapList.size());
//            遍历信息
            for (Map mapp : mapList) {
//                装进infos
                infos.add(mapp);
            }
//            再将infos装进层主箱
            cengzhu.add(infos);
//          louzhu和cengzhu保持同时装，进行下标对应，完成


        }
//        再返回一个Map
        HashMap<Object, Object> re = new HashMap<>(2);
        re.put("lou",louzhu);
        re.put("cen",cengzhu);
//     进行返回 两个数组,通过index关联起来，太开心了
        return re;
    }

//    创建回复
    public Integer createreply(ReplyInfo replyInfo){
        System.out.println(replyInfo);
        Integer i =1;
        try {
            String format = DateUtil.format(new Date(),"yyyy/MM/dd");
            replyInfo.setCreatetime(format);
            genericDao.create(state+"createinfo",replyInfo);
        } catch (Exception e) {
            i = 0;
        }
        return i;
    }

    public <T> Map PageHelper(Integer curPage,Integer pageSize,Map<String,Object> params){
        System.out.println(params);
        HashMap<Object, Object> map = new HashMap<>();
//      起始页
        int start = pageSize*(curPage - 1);
        RowBounds rowBounds = new RowBounds(start,pageSize);


        String ts = (String) params.get("ts");
        String ls = (String) params.get("ls");


//      查询符合条件的记录
        List<T> objects = genericDao.selectList(state+ls, params, rowBounds);

        //      查询总数
        Integer total = objects.size();

        map.put("data",objects);
        map.put("total",total);
        map.put("code",1);

        return map;
    }



}
