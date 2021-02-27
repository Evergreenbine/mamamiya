package app.controller;

import app.service.QuesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class QuestionContoller {

    @Autowired
    private QuesService quesService;

    //    回复我的
    @GetMapping("/api/replyme")
    @ResponseBody
    public Map replyme(HttpServletRequest req) {
        Integer curpage = this.getParamater("curpage", req);
        Integer useraccount = this.getParamater("useraccount", req);
        HashMap<Object, Object> map = new HashMap<>(2);
        map.put("useraccount", useraccount);
        return quesService.listReplyMe(curpage, 4, map);
    }

    // 我回复的内容
    @GetMapping("/api/myreplyto")
    @ResponseBody
    public Map myreplyto(HttpServletRequest req) {
        Integer curpage = this.getParamater("curpage", req);
        Integer useraccount = this.getParamater("useraccount", req);
        HashMap<Object, Object> map = new HashMap<>(2);
        map.put("useraccount", useraccount);
        return quesService.myreplyto(curpage, 4, map);
    }

    //    我回复的贴子
    @GetMapping("/api/myreplypost")
    @ResponseBody
    public Map myreplypost(HttpServletRequest req) {
        Integer curpage = this.getParamater("curpage", req);
        Integer useraccount = this.getParamater("useraccount", req);
        HashMap<Object, Object> map = new HashMap<>(2);
        map.put("useraccount", useraccount);
        return quesService.myreplypost(curpage, 4, map);
    }

    //    我关注的圈子
    @GetMapping("/api/myfollowcircle")
    @ResponseBody
    public Map myfollowcircle(HttpServletRequest req) {
        Integer curpage = this.getParamater("curpage", req);
        Integer useraccount = this.getParamater("useraccount", req);
        HashMap<Object, Object> map = new HashMap<>(2);
        map.put("useraccount", useraccount);
        return quesService.myfollowcircle(curpage, 4, map);
    }
//    回复我的贴子
    @GetMapping("/api/replymepost")
    @ResponseBody
    public Map replymepost(HttpServletRequest req) {
        Integer curpage = this.getParamater("curpage", req);
        Integer useraccount = this.getParamater("useraccount", req);
        HashMap<Object, Object> map = new HashMap<>(2);
        map.put("useraccount", useraccount);
        Map myrepl = quesService.myrepl(curpage, 4, map);
        Object data = myrepl.get("data");
        System.out.println(data);
        return quesService.myrepl(curpage, 4, map);
    }

    public Map myreplyfloor(HttpServletRequest req){
        Integer curpage = this.getParamater("curpage", req);
        Integer useraccount = this.getParamater("useraccount", req);
        HashMap<Object, Object> map = new HashMap<>(2);
        map.put("useraccount", useraccount);
        return quesService.myreplyfloor(curpage,4,map);
    }

    //采纳哪个问答
    @GetMapping("/api/passreply/{rid}")
    @ResponseBody
    public Integer passreply(@PathVariable("rid") Integer rid) {
        return quesService.passreply(rid);
    }

    private Integer getParamater(String paramsName, HttpServletRequest req) {
        String parameter = req.getParameter(paramsName);
        int i;
        if (!StringUtils.isEmpty(parameter)) {
            i = Integer.parseInt(parameter);
        } else {
            throw new NullPointerException("参数为空");
        }
        return i;
    }

}
