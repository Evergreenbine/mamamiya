package app.service;

import app.generic.GenericDao;
import app.vo.*;
import cn.hutool.core.date.DateUtil;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.zip.DataFormatException;

@Service
public class KonwlegeService {

    @Autowired
    private GenericDao genericDao;

    private final static String statement = Circle.class.getName()+".";


    public List<Map> likeposttitle(HashMap map){
        return genericDao.selectList(statement + "likeposttitle", map);
    }
    public List<Map> queryKonwBytitle(HashMap map){
        List<Map> objects = genericDao.selectList(statement + "querykonwbytitle", map);
        return objects;
    }
    public List<Map> queryQuesBytitle(HashMap map){
        List<Map> objects = genericDao.selectList(statement + "queryquesbytitle", map);
        return objects;
    }

    public KnowlegeVo getKonw(int kid){
        KnowlegeVo  k = genericDao.selectOne(statement + "queryKonwById", kid);
        return k;
    }

    public List<KnowlegeVo> getKonwAll(Integer cata){

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

//    发布提问
    public Integer publishQues(Question question){
        Date date = new Date();
        String date2 = DateFormatUtils.format(date, "yyyy/mm/dd");
        question.setCreatetime(date2);
        return genericDao.create(statement+"createques",question);
    }

//    按分类查询问题
    public List<Question> queryQues(Integer qcid){
        HashMap map = new HashMap(2);
        map.put("qcid",qcid);
        List<Question> ques = genericDao.selectList(statement + "queryQuesbycata", map);
        return ques;
    }
// 按qid查询问题
    public Question quesryQuesByqid(Integer qid){
        HashMap map = new HashMap(2);
        map.put("qid",qid);
        Question ques = genericDao.selectOne(statement + "quesryQuesByqid", map);
        return ques;
    }

//    按qid查找回复
    public List<Reply> quesReply(Integer qid){
        List<Reply> re = genericDao.selectList(statement + "quesreply", qid);
        return  re;
    }

//    插入回复
    public Integer createReply(Reply reply){
        int i= 1;
        try {
            String format = DateUtil.format(new Date(), "yyyy/MM/dd");
            reply.setCreatetime(format);
            genericDao.create(statement+"createreply",reply);
        }catch (Exception e){
            i = 0;
            System.out.println("插入回复失败");
            e.printStackTrace();
        }
        return i;
    }


//    查询所有贴子
    public List<ReplyPost> queryReplyPost(HashMap map){
        try{

            List<ReplyPost> objects = genericDao.selectList(statement + "querypost", map);
            return objects;
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("查询回帖子错误");
            return null;
        }
    }

//    回复帖子
    public Integer createReplyPost(ReplyPost replyPost){
        int i =1;
        try {
            Date date = new Date();
            String format = DateUtil.format(date, "yyyy/MM/dd");
            replyPost.setCreatetime(format);
            genericDao.create(statement+"createreplypost",replyPost);
        }catch (Exception e){
            i = 0;
            e.printStackTrace();
        }
        return i;
    }

//    查询知识分类
    public List<Map>  querykcata(){
        List<Map> map = genericDao.selectList(statement + "querykonwcata", null);
        System.out.println(map);
        return map;
    }

    public Integer createKonw(KnowlegeVo knowlegeVo){
        int i = 1;
        try {
             genericDao.create(statement + "createkonw", knowlegeVo);
        } catch (Exception e) {
            i = 0;
            System.out.println("创建知识出错");
            e.printStackTrace();
        }
        return i;
    }

    public Map listKonw(Integer curPage,Integer pageSize,Map params){
        params.put("ts","querykonwtotal");
        params.put("ls","querykonw");
        return PageHelper(curPage,pageSize,params);
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

//    插入浏览表
    public Integer lookup(Integer kid){
        int i = 1;
        try {
            String date = DateUtil.format(new Date(), "yyyy/MM/dd");
            System.out.println(date);
            HashMap<Object, Object> map = new HashMap<>(2);
            map.put("kid",kid);
            map.put("looktime",date);
            genericDao.create(statement + "lookup", map);
        } catch (Exception e) {
            i = 0;
            System.out.println("插入浏览表出错");
            e.printStackTrace();
        }
        return i;
    }

//    认为有用
    public Integer thinkuser(Map map){
    int i = 1;
    try {
        genericDao.create(statement + "thinkuse", map);
    } catch (Exception e) {
        i = 0;
        System.out.println("插入浏览表出错");
        e.printStackTrace();
    }
    return i;
}
// 查询某人认为这知识是否有用
    public Integer isuse(Map map){

        try {
           return genericDao.selectOne(statement + "whothinkuser", map);
        } catch (Exception e) {

            System.out.println("查询有用出错");
            e.printStackTrace();
        }
        return -1;
    }

    public Integer countuse(Integer kid){

        try {
           return genericDao.selectOne(statement + "numsofuse", kid);
        } catch (Exception e) {

            System.out.println("查询有用表出错");
            e.printStackTrace();
            return -1;
        }

    }

//    数据统计方面
    public List<Map> mostbuy(String stime,String etime){
        HashMap<Object, Object> map = new HashMap<>();
        map.put("stime",stime);
        map.put("etime",etime);
        return genericDao.selectList(statement+"goodusekonw",map);
    }

    public List<Map> mostlook(String stime,String etime){
        HashMap<Object, Object> map = new HashMap<>();
        map.put("stime",stime);
        map.put("etime",etime);
        return genericDao.selectList(statement+"lookkonw",map);
    }

    public List<Map> mostuse(){
        return genericDao.selectList(statement+"mostuse",null);
    }

    public Map everylook(HashMap map){
        List<Map> objects = genericDao.selectList(statement + "everylook", map);
        ArrayList<Object> kid = new ArrayList<>();
        ArrayList<Object> nums = new ArrayList<>();

        for (Map object : objects) {
            kid.add(object.get("kid"));
            nums.add(object.get("nums"));
        }

        HashMap<Object, Object> params = new HashMap<>();
        params.put("kid",kid);
        params.put("nums",nums);
        return params;

    };

}


