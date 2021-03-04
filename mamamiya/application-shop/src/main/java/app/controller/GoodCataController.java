package app.controller;

import app.service.GoodCataService;
import app.vo.GoodCata;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class GoodCataController {

    @Autowired
    private GoodCataService goodCataService;


    @PostMapping("/api/creategoodcata")
    @ResponseBody
    public Integer createGoodCata(@RequestBody GoodCata goodCata){
       return goodCataService.createGoodCata(goodCata);
    }

    @GetMapping("/api/getgoodcata")
    @ResponseBody
    public List<Map> queryGoodcata(HttpServletRequest req){
        return goodCataService.queryGoodcata(req);
    }
}
