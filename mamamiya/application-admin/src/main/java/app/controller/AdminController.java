package app.controller;

import app.service.AdminService;
import app.vo.Admin;
import app.vo.shop.Milk;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

//    登录管理员
    @PostMapping("/api/admin/login")
    @ResponseBody
    public HashMap login(@RequestBody Admin adminRole){
        System.out.println(adminRole.toString());
        return adminService.login(adminRole);
    }

    @ResponseBody
    @PostMapping("/api/good")
    public Integer createGoods(@RequestBody Milk goods){
        Integer i= adminService.createGoods(goods);
        return i;
    }

    @ResponseBody
    @PostMapping("/api/ugood")
    public Integer updateGoods(@RequestBody Milk milk){
        System.out.println(milk.getTag());
        Integer i= adminService.updateOrDeleteGood(milk);
        return i;
    }

    @GetMapping("/api/demilk/{gid}")
    @ResponseBody
    public Integer dele(@PathVariable("gid") Integer gid){
        System.out.println(gid);

        return adminService.deleMilk(gid);
    }



}
