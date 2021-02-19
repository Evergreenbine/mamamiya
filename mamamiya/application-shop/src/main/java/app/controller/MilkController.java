package app.controller;

import app.service.MilkService;
import app.utils.Params;
import app.utils.ResponceResult;
import app.vo.Milk;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.tags.Param;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class MilkController {

    @Autowired
    private MilkService milkService;

    @GetMapping("/api/milks")
    @ResponseBody
    public ResponceResult<List<Milk>> listMilk(){
        ResponceResult result = null;
        try {
            List<Milk> list = milkService.list();
            result = ResponceResult.successMessage(HttpStatus.OK,"处理成功",list);
        }catch (Exception e){
            result = ResponceResult.successMessage(HttpStatus.OK,"处理失败",null);
        }
        return  result;
    }


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

            System.out.println(cata);

            String sprice = request.getParameter("sprice");
            String eprice =request.getParameter("eprice");


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

    @GetMapping("/api/milks/good")
    @ResponseBody
    public List<Milk> goodmilklist(){
        List<Milk> goodmilklist = milkService.goodmilklist();
        return  goodmilklist;
    }

    @ResponseBody
    @PostMapping("/api/milks/purchase")
    public Integer purchase(@RequestBody List<Milk> milk){
        for (Milk milk1 : milk) {
            System.out.println(milk1.getCount());
        }
        return 0;
    }

}
