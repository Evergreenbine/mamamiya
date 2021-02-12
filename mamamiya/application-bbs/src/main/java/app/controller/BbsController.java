package app.controller;

import app.service.impl.BbsService;
import app.utils.ResponceResult;
import app.vo.Circle;
import app.vo.Post;
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
    public ResponceResult savePost(HttpServletRequest request, @RequestBody Post post) {
        ResponceResult res = null;

        String postcircle = request.getParameter("postcircle");
        post.setContent(postcircle);
        post.setTime(DateFormatUtils.format(new Date(), "yyyyMMddHHmmss", TimeZone.getDefault()));

        System.out.println(post);
        if (bbsService.savePost(post)==1){
            res = ResponceResult.successMessage(HttpStatus.OK,"处理完成",null);
        }else {
            res = ResponceResult.failMessage(HttpStatus.EXPECTATION_FAILED,"处理失败",null);
        }
        return res;
    }

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

}
