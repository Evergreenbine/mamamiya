package app.controller;

import app.service.impl.BbsService;
import app.utils.ResponceResult;
import app.vo.Circle;
import app.vo.Post;
import cn.hutool.core.date.DateUtil;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

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

}
