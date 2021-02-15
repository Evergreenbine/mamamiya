package app.controller;

import app.service.KonwlegeService;
import app.vo.KnowlegeVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

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

//    查看知识是否免费
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
}
