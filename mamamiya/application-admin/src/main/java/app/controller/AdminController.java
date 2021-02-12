package app.controller;

import app.service.AdminService;
import app.vo.shop.Goods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

    @ResponseBody
    @PostMapping("/api/good")
    public Integer createGoods(@RequestBody Goods goods){
        Integer i= adminService.createGoods(goods);
        return i;
    }

}
