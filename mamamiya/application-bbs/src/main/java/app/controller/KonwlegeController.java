package app.controller;

import app.service.KonwlegeService;
import app.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class KonwlegeController {

    @Autowired
    private KonwlegeService konwlegeService;


    @GetMapping("/api/konw/{kid}")
    @ResponseBody
    public KnowlegeVo getKonw(@PathVariable("kid") Integer kid){
        System.out.println(kid);
        return konwlegeService.getKonw(kid);
    }

    @GetMapping("/api/konws/{cata}")
    @ResponseBody
    public List<KnowlegeVo> getKonws(@PathVariable("cata") Integer cata){

        return konwlegeService.getKonwAll(cata);
    }

//    需要判断是否登录 查看知识是否免费
    @GetMapping("/api/konws/isfree")
    @ResponseBody
    public Integer queryIsFree(HttpServletRequest request){
        String kid = request.getParameter("kid");
        String useraccount = request.getParameter("useraccount");
        HashMap<Object, Object> map = new HashMap<>(2);
        map.put("kid",kid);
        map.put("useraccount",useraccount);
        return konwlegeService.queryIsFree(map);
    }

//    需要判断是否登录
    @GetMapping("/api/knows/purchase")
    @ResponseBody
    public Integer purchase(HttpServletRequest request){
        Map map = new HashMap(4);
//        需要的参数
        String kid = request.getParameter("kid");
        String useraccount = request.getParameter("useraccount");
        Integer u = Integer.parseInt(useraccount);
        String price = request.getParameter("price");
        Double p = Double.parseDouble(price);
        map.put("kid",kid);
        map.put("useraccount",u);
        map.put("price",p);

        return konwlegeService.purchase((HashMap) map);
    }

//    问答controller


//    查询所有问题分类
    @GetMapping("/api/ques/all")
    @ResponseBody
    public List<Qcata> quesCata(){
        return konwlegeService.qcatas();
    }
    //插入指定问题
    @PostMapping("/api/ques")
    @ResponseBody
    public Integer createQues(@RequestBody Question question){
        System.out.println(question);
        return konwlegeService.publishQues(question);
    }
//    按分类来查问题
    @GetMapping("/api/ques/{qcid}")
    @ResponseBody
    public List<Question> query(@PathVariable("qcid") Integer qcid){
        return konwlegeService.queryQues(qcid);
    }

// 按qid查找问题
    @GetMapping("/api/quesbyqid/{qid}")
    @ResponseBody
    public Question queryByqid(@PathVariable("qid") Integer qid){
    return konwlegeService.quesryQuesByqid(qid);
}

    //按照qid查找回复
    @GetMapping("/api/quesreply/{qid}")
    @ResponseBody
    public List<Reply> queryReply(@PathVariable("qid") Integer qid){
        return konwlegeService.quesReply(qid);
    }

//    插入回复
    @PostMapping("/api/reply")
    @ResponseBody
    public Integer createReply(@RequestBody Reply reply){
        System.out.println(reply);
        return konwlegeService.createReply(reply);
    }

//    查询所有回复贴子
    @GetMapping("/api/replypost/{pid}")
    @ResponseBody
    public List<ReplyPost> queryReplyPost(@PathVariable("pid")Integer pid){
        System.out.println(pid);
        HashMap map = new HashMap(2);
        map.put("pid",pid);
        List<ReplyPost> replyPosts = konwlegeService.queryReplyPost(map);
        return replyPosts;
    }

//    创建回复
    @PostMapping("/api/createReplyPost")
    @ResponseBody
    public Integer createReplyPost(@RequestBody ReplyPost replyPost){
        System.out.println("已经请求创建回复贴子接口");
        System.out.println(replyPost);
        return konwlegeService.createReplyPost(replyPost);
//        return konwlegeService.createReplyPost(replyPost);
    }
}
