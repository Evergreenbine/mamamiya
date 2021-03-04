package app.controller;

import app.service.KonwlegeService;
import app.vo.*;
import cn.hutool.core.date.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class KonwlegeController {

    @Autowired
    private KonwlegeService konwlegeService;

//    根据title模糊查询
    @GetMapping("/api/likeposttile")
    @ResponseBody
    public List<Map> likeposttitle(HttpServletRequest req){
        HashMap<Object, Object> map = new HashMap<>();
        String title = req.getParameter("title");
        map.put("title",title);
        return konwlegeService.likeposttitle(map);
    }



//    根据tilte模糊查询
    @GetMapping("/api/likequery")
    @ResponseBody
    public List<Map> listKonwByTitle(HttpServletRequest req){
        Integer cata = this.getParamater("cata", req);

        HashMap<Object, Object> map = new HashMap<>();
        String title = req.getParameter("title");
        map.put("title",title);

        if(cata == 1){
            return konwlegeService.queryKonwBytitle(map);
        }else {
            return konwlegeService.queryQuesBytitle(map);
        }
    }


//    查询知识分类
    @GetMapping("/api/konwcata")
    @ResponseBody
    public List<Map> getkonwcata(){

        return konwlegeService.querykcata();
    }
//    创建知识
    @PostMapping("/api/konwcreate")
    @ResponseBody
    public Integer createKonw(@RequestBody KnowlegeVo knowlegeVo){
        return konwlegeService.createKonw(knowlegeVo);
    }
    @GetMapping("/api/lookup/{kid}")
    @ResponseBody
    public Integer lookup(@PathVariable("kid") Integer kid){
        return konwlegeService.lookup(kid);
    }

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
        Date date = new Date();
        String buytime = DateUtil.format(date,"yyyy/MM/dd");
        map.put("kid",kid);
        map.put("useraccount",u);
        map.put("price",p);
        map.put("buytime",buytime);
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


    @GetMapping("/api/allkonws")
    @ResponseBody
    public Map listBrand(HttpServletRequest req){

        HashMap<Object, Object> map = new HashMap<>();
        Integer curPage = this.getParamater("curpage",req);
        System.out.println("curpage是"+curPage);
        map.put("curpage",curPage);
        return konwlegeService.listKonw(curPage,5,map);

//        return null;
    }

//    认为有用
    @GetMapping("/api/thinkuse")
    @ResponseBody
    public Integer thinkuser(HttpServletRequest req){
    int i = 1;

    try {
        HashMap<Object, Object> map = new HashMap<>(2);
        Integer useraccount = this.getParamater("useraccount",req);
        Integer kid = this.getParamater("kid",req);

        map.put("useraccount",useraccount);
        map.put("kid",kid);

        konwlegeService.thinkuser(map);
    } catch (Exception e) {
        i = 0;
        System.out.println("插入浏览表出错");
        e.printStackTrace();
    }
    return i;
}

//   查询该知识是否认为有用
    @GetMapping("/api/isuse")
    @ResponseBody
   public Map isuse(HttpServletRequest req) {


        try {
            Integer useraccount = this.getParamater("useraccount", req);
            Integer kid = this.getParamater("kid", req);

            HashMap<Object, Object> map = new HashMap<>(2);
            map.put("useraccount", useraccount);
            map.put("kid", kid);
            Integer isuse = konwlegeService.isuse(map);
//            System.out.println(isuse);
            Integer countuse = konwlegeService.countuse(kid);
            System.out.println(isuse);
            map = new HashMap<>(2);
            map.put("count", countuse);
            if (isuse > 0 ) {
                map.put("isuse", 1);
            } else {
                map.put("isuse", 0);
            }
            return map;
        } catch (Exception e) {

            System.out.println("查询有用出错");
            e.printStackTrace();
            return null;
        }

    }

    private Integer getParamater(String paramsName,HttpServletRequest req){
        String parameter = req.getParameter(paramsName);
        int i;
        if (!StringUtils.isEmpty(parameter)) {
            i =  Integer.parseInt(parameter);
        }else {
            throw new NullPointerException("参数为空");
        }
        return i;
    }

//    数据统计方面

    @GetMapping("/api/mostbuy")
    @ResponseBody
    public List<Map> mostbuy(HttpServletRequest req){
    String stime =req.getParameter("stime");
    String etime =req.getParameter("etime");
    return konwlegeService.mostbuy(stime,etime);
    }
    @GetMapping("/api/mostlook")
    @ResponseBody
    public List<Map> mostlook(HttpServletRequest req){
    String stime =req.getParameter("stime");
    String etime =req.getParameter("etime");
    return konwlegeService.mostlook(stime,etime);
    }

    @GetMapping("/api/mostuse")
    @ResponseBody
    public List<Map> mostuse(){
        return konwlegeService.mostuse();
    }

    @GetMapping("/api/everylook")
    @ResponseBody
    public Map everlook(){

        return konwlegeService.everylook(null);
    }

}
