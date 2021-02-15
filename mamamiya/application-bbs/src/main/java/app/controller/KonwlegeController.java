package app.controller;

import app.service.KonwlegeService;
import app.vo.KnowlegeVo;
import app.vo.Qcata;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @GetMapping("/api/ques/all")
    @ResponseBody
    public List<Qcata> quesCata(){
        return konwlegeService.qcatas();
    }
}
