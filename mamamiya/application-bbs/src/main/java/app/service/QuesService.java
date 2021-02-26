package app.service;

import app.generic.GenericDao;
import app.vo.Question;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class QuesService {

    @Autowired
    private GenericDao genericDao;

    private final String statement = Question.class.getName()+".";

    public Map listReplyMe(Integer curPage, Integer pageSize, Map params){
        params.put("ts","replymetotal");
        params.put("ls","replyme");
        return PageHelper(curPage,pageSize,params);
    }

//    采纳该答案
    public Integer passreply(Integer rid){
        int i =1;
        try {
            genericDao.updateOrDelete(statement+"okd",rid);
        } catch (Exception e) {
            i = 0;
            e.printStackTrace();
        }
        return i;
    }
// 我回复的问答
    public Map myreplyto(Integer curPage, Integer pageSize, Map params){
        params.put("ts","myreplytotal");
        params.put("ls","myreplyto");
        return PageHelper(curPage,pageSize,params);
    }

//    我回复的贴子
    public Map myreplypost(Integer curpage,Integer pageSize, Map params){
        params.put("ts","myposttotal");
        params.put("ls","mypost");
        return PageHelper(curpage,pageSize,params);
    }

    public <T> Map PageHelper(Integer curPage,Integer pageSize,Map<String,Object> params){
        System.out.println(params);
        HashMap<Object, Object> map = new HashMap<>();
//      起始页
        int start = pageSize*(curPage - 1);
        RowBounds rowBounds = new RowBounds(start,pageSize);


        String ts = (String) params.get("ts");
        String ls = (String) params.get("ls");
//      查询总数
        Integer total = genericDao.selectOne(statement+ts, params);

//      查询符合条件的记录
        List<T> objects = genericDao.selectList(statement+ls, params, rowBounds);

        map.put("data",objects);
        map.put("total",total);
        map.put("code",1);

        return map;
    }



}
