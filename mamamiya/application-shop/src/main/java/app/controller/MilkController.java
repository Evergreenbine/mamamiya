package app.controller;

import app.service.MilkService;
import app.utils.Params;
import app.utils.ResponceResult;
import app.vo.CommentGood;
import app.vo.Milk;
import jdk.nashorn.internal.objects.annotations.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.tags.Param;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class MilkController {

    @Autowired
    private MilkService milkService;


//    查询商品分类
    @GetMapping("/api/goodcata")
    @ResponseBody
    public List<Map> queryGoodCata(){
       return milkService.queryGoodCata();
    }




    @GetMapping("/api/milks")
    @ResponseBody
    public ResponceResult<List<Map>> listMilk(){
        ResponceResult result = null;
        try {
            List<Map> list = milkService.list();
            result = ResponceResult.successMessage(HttpStatus.OK,"处理成功",list);
        }catch (Exception e){
            result = ResponceResult.successMessage(HttpStatus.OK,"处理失败",null);
        }
        return  result;
    }

//按条件查询所有商品
    //
    @GetMapping("/api/milk")
    @ResponseBody
    public ResponceResult<List<Milk>> listMilk(HttpServletRequest request){

        ResponceResult result = null;
        Map<String,Object> map = new HashMap<>();
        System.out.println("请求条件查询接口");
        try {
//            品牌id
            String bid = request.getParameter("bid");
//            阶段
            String stage = request.getParameter("stage");
//            年龄段
            String age = request.getParameter("age");
//            分类
            String cata = request.getParameter("cata");
//            商品类别
            String gcid = request.getParameter("gcid");
            System.out.println(cata);

            String sprice = request.getParameter("sprice");
            String eprice =request.getParameter("eprice");

            if (!StringUtils.isEmpty(gcid)) {
                map.put("gcid",Integer.parseInt(gcid));
            }

            if (!StringUtils.isEmpty(bid)) {
                map.put("bid",Integer.parseInt(bid));
            }
            if (!StringUtils.isEmpty(stage)) {
                map.put("stage",Integer.parseInt(stage));
            }
            if (!StringUtils.isEmpty(age)) {
                map.put("age",Integer.parseInt(age));
            }
            if (!StringUtils.isEmpty(cata)) {
                map.put("cata",Integer.parseInt(cata));
            }
            if (!StringUtils.isEmpty(sprice)&&!StringUtils.isEmpty(eprice)) {
                map.put("sprice",sprice);
                map.put("eprice",eprice);
            }

            List<Milk> list = milkService.list(map);

            result = ResponceResult.successMessage(HttpStatus.OK,"处理成功",list);
        }catch (Exception e){
            result = ResponceResult.successMessage(HttpStatus.OK,"处理失败",null);
        }
        return  result;
    }

//    好评商品
    @GetMapping("/api/milks/good/{gcid}")
    @ResponseBody
    public List<Milk> goodmilklist(@PathVariable("gcid") Integer gcid){

        List<Milk> goodmilklist = milkService.goodmilklist(gcid);
        return  goodmilklist;
    }
//    最新商品
    @GetMapping("/api/lastestgood/{gcid}")
    @ResponseBody
    public List<Milk> lastestgood(@PathVariable("gcid") Integer gcid){
        List<Milk> milks = milkService.lastestMilk(gcid);
        return milks;
    }

//    热销商品
    @GetMapping("/api/welcome/{gcid}")
    @ResponseBody
    public List<Milk> mostgood(@PathVariable("gcid") Integer gcid){
       List<Milk> mm = milkService.mostgood(gcid);
       return mm;
    }

//    购买商品
    @ResponseBody
    @PostMapping("/api/milks/purchase")
    public Integer purchase(HttpServletRequest req,@RequestBody List<Milk> milk){
        System.out.println("请求了购买商品接口");

        String useraccount = req.getParameter("useraccount");
        int i = Integer.parseInt(useraccount);
        String needmoney = req.getParameter("needmoney");
        double v =0;

        System.out.println(i);
        System.out.println(needmoney);
        for (Milk milk1 : milk) {
            System.out.println(milk1.getCount());
            System.out.println(milk1.getGid());
            System.out.println(milk1.getPrice());
            System.out.println("分割线");
        }
        if (!StringUtils.isEmpty(needmoney)) {
             v= Double.parseDouble(needmoney);
        }

        return milkService.purchase(i,milk,v);

//        return 1;
    }

//    按gid查询商品
    @GetMapping("/api/specificgood/{gid}")
    @ResponseBody
    public Milk specificGood(@PathVariable("gid") Integer gid){
        return milkService.specificGood(gid);
    }

    @GetMapping("/api/myshop")
    @ResponseBody
    public Map myrecord(HttpServletRequest req){
        return milkService.myrecord(req);
    }

    @GetMapping("/api/comment")
    @ResponseBody
    public List<Map> commentgood(HttpServletRequest request){

       return milkService.commentgood(request);
    }


    @PostMapping("/api/commentgood")
    @ResponseBody
    public Integer creatCommentGood(@RequestBody CommentGood commentGood){
        return milkService.createcommentgood(commentGood);
    }

    @GetMapping("/api/lastestrate/{gcid}")
    @ResponseBody
    public Map lastestGoodRate(@PathVariable("gcid") Integer gcid){
        return milkService.lastestGoodRate(gcid);
    }



}
