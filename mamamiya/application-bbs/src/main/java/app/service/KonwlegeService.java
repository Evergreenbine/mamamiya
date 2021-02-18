package app.service;

import app.generic.GenericDao;
import app.vo.*;
import cn.hutool.core.date.DateUtil;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.zip.DataFormatException;

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
}


