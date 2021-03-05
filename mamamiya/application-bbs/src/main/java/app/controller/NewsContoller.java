package app.controller;

import app.service.impl.NewsService;
import app.vo.News;
import app.vo.ReplyInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class NewsContoller {
    @Autowired
    private NewsService newsService;

//    首页查询

    @GetMapping("/api/queryIndexKonw")
    @ResponseBody
    public List<Map> queryIndexKonw(){
        return newsService.queryIndexKonw();
    }

    @GetMapping("/api/createkcata")
    @ResponseBody
    public Integer createkcata(@RequestParam("kname") String kname){
        return newsService.createkcata(kname);
    }

    @GetMapping("/api/getAllNews")
    @ResponseBody
    public  List<ArrayList> getAll(HashMap map){
     return    newsService.listAll(map);
    }




// 根据id查询资讯

    @GetMapping("/api/info")
    @ResponseBody
    public Map getNewsById(HttpServletRequest req){
        HashMap map = new HashMap();
        Integer infoid  = this.getParamater("infoid",req);
        map.put("infoid",infoid);
        Map newsById = newsService.getNewsById(map);
        newsById.put("code",1);
        return newsById;
    }
//    浏览记录
    @GetMapping("/api/looknew")
    @ResponseBody
    public Integer looknew(HttpServletRequest req){
        HashMap<Object, Object> map = new HashMap<>();
        map.put("useraccount",this.getParamater("useraccount",req));
        map.put("infoid",this.getParamater("infoid",req));
        return newsService.looknew(map);
    }




    @GetMapping("/api/getreplyinfo")
    @ResponseBody
    public  Map listreplyinfo(HttpServletRequest req){
        HashMap<Object, Object> map = new HashMap<>();

        Integer curpage = this.getParamater("curpage", req);
        map.put("infoid",this.getParamater("infoid",req));


        return newsService.listreplyinfo(curpage,5,map);
    }

//    创建回复
    @PostMapping("/api/createreply")
    @ResponseBody
    public  Integer createreply( @RequestBody  ReplyInfo replyInfo){
        return newsService.createreply(replyInfo);
    }

    private Integer getParamater(String paramsName, HttpServletRequest req){
        String parameter = req.getParameter(paramsName);
        int i;
        if (!StringUtils.isEmpty(parameter)) {
            i =  Integer.parseInt(parameter);
        }else {
            throw new NullPointerException("参数为空");
        }
        return i;
    }



    @GetMapping("/api/newall")
    @ResponseBody
    public Map newsall(HttpServletRequest req){
        Integer curpage = this.getParamater("curpage",req);
        Map<Object, Object> map = new HashMap<>();
        return (Map) newsService.newsall(curpage,map);
    }

    @GetMapping("/api/listuser")
    @ResponseBody
    public Map listUser(HttpServletRequest req){
        Integer curpage = this.getParamater("curpage", req);
        HashMap<Object, Object> params = new HashMap<>();
        return newsService.listUser(curpage,params);
    }


//    查询今日的资讯
    @GetMapping("/api/listnews")
    @ResponseBody
    public List<Map> listnews(){

        return newsService.listNews();
    }
}
