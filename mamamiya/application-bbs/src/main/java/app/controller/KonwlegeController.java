package app.controller;

import app.service.KonwlegeService;
import app.vo.KnowlegeVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

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
}
