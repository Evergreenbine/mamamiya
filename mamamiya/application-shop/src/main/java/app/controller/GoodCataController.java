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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class GoodCataController {

    @Autowired
    private GoodCataService goodCataService;


//    根据bid 或者 gname 查询商品

    @GetMapping("/api/likequerygood")
    @ResponseBody
    public List<Map> likequerygood(HttpServletRequest req){
        System.out.println("请求了");
        String bid = req.getParameter("bid");
        Integer bid2 = null;
        HashMap<Object, Object> map = new HashMap<>();
        if(bid != null){
            bid2 = Integer.parseInt(bid);
            map.put("bid",bid2);
        }
        String gname = req.getParameter("gname");

        map.put("gname",gname);
        return goodCataService.likequerygood(map);
    }

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
