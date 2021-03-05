package app.controller;

import app.service.AdminService;
import app.vo.Admin;
import app.vo.shop.Brand;
import app.vo.shop.Milk;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

    private HttpServletRequest req;

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

    @GetMapping("/api/brandcata")
    @ResponseBody
    public Map queryBrandCate(){
        return adminService.queryBrandCate();
    }

    @PostMapping("/api/savebrand")
    @ResponseBody
    public Integer saveBrand(@RequestBody Brand brand){
        return adminService.saveBrand(brand);
    }

    @GetMapping("/api/adminbrands")
    @ResponseBody
    public Map listBrand(HttpServletRequest req){
        this.req =req;
        HashMap<Object, Object> map = new HashMap<>();
        Integer curPage = this.getParamater("curpage");
        System.out.println("curpage是"+curPage);
        map.put("curpage",curPage);
        return adminService.listBrand(curPage,5,map);

//        return null;
    }


    @PostMapping("/api/updatebrand")
    @ResponseBody
    public Integer updateBrand(@RequestBody Brand brand){
        brand.setTag(1);
        return adminService.saveBrand(brand);
    }

    private Integer getParamater(String paramsName){
        String parameter = this.req.getParameter(paramsName);
        int i;
        if (!StringUtils.isEmpty(parameter)) {
            i =  Integer.parseInt(parameter);
        }else {
            throw new NullPointerException("参数为空");
        }
        return i;
    }


}
