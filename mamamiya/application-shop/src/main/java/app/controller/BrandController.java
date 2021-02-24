package app.controller;

import app.service.BrandService;
import app.utils.PinYinUtil;
import app.utils.ResponceResult;
import app.vo.Brand;
import app.vo.ExportPlane;
import org.apache.poi.hssf.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class BrandController {

    @Autowired
    private BrandService brandService;


//    中间变量
    private HttpServletRequest req = null;
//    过渡的接口,下面的接口到时删了

//    转化方法
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

    @GetMapping("/api/brand")
    @ResponseBody
    public Map listBrand(HttpServletRequest req){
        Map<String, Object> map = new HashMap<>(2);
        this.req =req;
        Integer limit = this.getParamater("limit");
        Integer gcid = this.getParamater("gcid");

        if (limit != 0) {
            map.put("limit",limit);
        }
        map.put("gcid",gcid);

        List<Brand> list = null;

        list = brandService.listWithLimit(map);



        map = new HashMap<>(2);
        map.put("code",1);
        map.put("resp",list);
        return map;
    }


    @GetMapping("/api/sellgoodbrand/{gcid}")
    @ResponseBody
    public Map sellGoodBrand(@PathVariable("gcid") Integer gcid){
      return   brandService.sellGoodBrand(gcid);
    }


//    这个基本没用了
    @ResponseBody
    @GetMapping("/api/brand/{limit}")
    public ResponceResult<Brand>  listAll(@PathVariable("limit") Integer limit){
        HashMap<Object, Object> map = new HashMap<>();
        ResponceResult<Brand> result ;
        try{
            List<Brand> list;
            if (0 != limit){
              map.put("limit",limit);
              list = brandService.listWithLimit(map);
            }else {
              list = brandService.list();
            }
            result = ResponceResult.successMessage(HttpStatus.OK,"查找成功",list);
        }catch (Exception e){
            e.printStackTrace();
            result = ResponceResult.failMessage(HttpStatus.NO_CONTENT,"查找失败",null);
        }
        return result;
    }

//    这个是会划分26个字母的
    @GetMapping("/api/brand/all")
    @ResponseBody
    public ResponceResult list(){
        ResponceResult<List<Brand>> result ;
        ArrayList<Brand>[] brandarr = new ArrayList[26];
        int count = 0;
        try{
            List<Brand> list = brandService.list();
            for (int i = 'a' ;i <= 'z';i++){
                ArrayList<Brand> brands = new ArrayList<>();
                for (Brand brand : list) {
                    if (i == PinYinUtil.getAllFirstLetter(brand.getBname()).charAt(0)) {
                       brands.add(brand);
                       count++;
                    }
                }
                brandarr[i-97] = brands;
            }

            result = ResponceResult.successMessage(HttpStatus.OK,"查找成功",brandarr,count);
        }catch (Exception e){
            result = ResponceResult.failMessage(HttpStatus.NO_CONTENT,"查找失败",null);
        }
        return result;
    }

//    获取指定的品牌
    @GetMapping("/api/brands/{bid}")
    @ResponseBody
    public Brand getBrand(@PathVariable("bid") Integer bid){
        Brand brand = brandService.selectOne(bid);
        return brand;
    }

//    查询品牌下的数量
    @GetMapping("/api/numsofgood")
    @ResponseBody
    Map countGoodNumsOfBrand(HttpServletRequest req){
        List<Map> cc =  brandService.countGoodNumsOfBrand(req);
        ArrayList<Object> brand = new ArrayList<>();
        ArrayList<Object> nums = new ArrayList<>();
        for (Map map : cc) {
            brand.add( map.get("bname"));
            nums.add( map.get("nums"));
        }
        HashMap<Object, Object> map = new HashMap<>();
        map.put("brand",brand);
        map.put("nums",nums);
        return map;
    };
//销售好的商品
    @GetMapping("/api/sellgoodgood")
    @ResponseBody
    public List<Map> sellGoodGoods(HttpServletRequest req){
        List<Map> cc =  brandService.sellGoodGoods(req);

        return cc;
    }

//    商品的数量
    @GetMapping("/api/goodpsnums")
    @ResponseBody
    public Map numsofgood(HttpServletRequest req){
        List<Map> cc =  brandService.goodofnums(req);
        System.out.println(cc);
        ArrayList<Object> name = new ArrayList<>();
        ArrayList<Object> nums = new ArrayList<>();
        for (Map map : cc) {
            name.add( map.get("name"));
            nums.add( map.get("value"));
        }
        HashMap<Object, Object> map = new HashMap<>();
        map.put("name",name);
        map.put("nums",nums);
        return map;
    }

//    好评的商品 前6
    @GetMapping("/api/orderrate")
    @ResponseBody
    public   List<Map>  orderrate(){
        return brandService.orderrate();
    }





}
