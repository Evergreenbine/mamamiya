package app.controller;

import app.service.impl.BbsService;
import app.utils.ResponceResult;
import app.vo.Circle;
import app.vo.Post;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.io.unit.DataUnit;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.support.HttpRequestHandlerServlet;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Controller
public class BbsController {
    @Autowired
    private BbsService bbsService;

//   查询所有圈子
    @GetMapping("/api/circle")
    @ResponseBody
    public ResponceResult listCircle(){
        ResponceResult res = null;
        List<Circle> circleList = bbsService.listCircle();
        res=ResponceResult.successMessage(HttpStatus.OK,"处理完成",circleList);
        return res;
    }

   //防止XSS攻击还没做
    @PostMapping("/api/post")
    @ResponseBody
    public Integer savePost(HttpServletRequest request, @RequestBody Post post) {

        Date date =new Date();
        String date2 = DateFormatUtils.format(date, "yyyy/mm/dd");
        post.setTime(date2);
        return  bbsService.savePost(post);
    }

//    根据圈子id 查询所有帖子
//    根据具体帖子id查询对应的帖子
    @GetMapping("/api/posts")
    @ResponseBody
    public ResponceResult getPost(HttpServletRequest req){
        ResponceResult<List<Post>> res;
        Map m = new HashMap<>(2);

        String cid = req.getParameter("cid");
        String pid = req.getParameter("pid");
        String useraccount = req.getParameter("useraccount");
//        System.out.println(cid);
//        System.out.println(pid);
        m.put("cid",cid);
        if(null != pid) {
            m.put("pid", pid);
        }
        if(null != useraccount){
            m.put("useraccount",useraccount);
        }
        System.out.println("已请求根据圈子id查询贴子的接口");
        List<Post> post = bbsService.getPost(m);

        res = ResponceResult.successMessage(HttpStatus.OK,"处理完成",post);
        return  res;
    }

    @ResponseBody
    @PostMapping("/api/circle/create")
    public Integer saveCircle(@RequestBody Circle circle){
        System.out.println("圈子是");
        System.out.println(circle);
        return bbsService.saveCircle(circle);
    }

//    删除圈子和贴子统一接口
    @GetMapping("/api/deleteitem")
    @ResponseBody
    public Integer delete(HttpServletRequest req){
        HashMap<Object, Object> map = new HashMap<>();
//        先删除贴子
        String pid = req.getParameter("pid");

        if (!StringUtils.isBlank(pid)) {
            int p = Integer.parseInt(pid);
           map.put("pid",p);
        }

        String cid = req.getParameter("cid");

        if (!StringUtils.isBlank(cid)) {
            int c = Integer.parseInt(cid);
            map.put("cid",c);
        }
         return bbsService.deleteCirlceOrPost(map);

    }
//    查询圈子的关注人数
    @GetMapping("/api/follownums/{cid}")
    @ResponseBody
    public Integer follownums(@PathVariable int cid){
        return bbsService.follow(cid);
    }

//    关注某个圈子
    @GetMapping("/api/followcircle")
    @ResponseBody
    public Integer follow(HttpServletRequest request){
        String cid,useraccount;
        Map map = new HashMap(2);
        if (!org.springframework.util.StringUtils.isEmpty(cid = request.getParameter("cid"))) {
            int c = Integer.parseInt(cid);
            map.put("cid",c);
        }
        if (!org.springframework.util.StringUtils.isEmpty(useraccount = request.getParameter("useraccount"))) {
            int u1 = Integer.parseInt(useraccount);
            map.put("useraccount",u1);
        }

        return  bbsService.foucsCircle((HashMap) map);

    }

//    查询是否关注
    @GetMapping("/api/isfollow")
    @ResponseBody
    public Integer isfollow(HttpServletRequest request){
        String cid,useraccount;
        Map map = new HashMap(2);
        if (!org.springframework.util.StringUtils.isEmpty(cid = request.getParameter("cid"))) {
            int c = Integer.parseInt(cid);
            map.put("cid",c);
        }
        if (!org.springframework.util.StringUtils.isEmpty(useraccount = request.getParameter("useraccount"))) {
            int u1 = Integer.parseInt(useraccount);
            map.put("useraccount",u1);
        }

        return  bbsService.isfollow((HashMap) map);

    }

//    取消关注的接口
    @GetMapping("/api/nofollow")
    @ResponseBody
   public Integer nofollow(HttpServletRequest request){
        String cid,useraccount;
        Map map = new HashMap(2);
        if (!org.springframework.util.StringUtils.isEmpty(cid = request.getParameter("cid"))) {
            int c = Integer.parseInt(cid);
            map.put("cid",c);
        }
        if (!org.springframework.util.StringUtils.isEmpty(useraccount = request.getParameter("useraccount"))) {
            int u1 = Integer.parseInt(useraccount);
            map.put("useraccount",u1);
        }
        return bbsService.nofollow((HashMap) map);
   }



}
