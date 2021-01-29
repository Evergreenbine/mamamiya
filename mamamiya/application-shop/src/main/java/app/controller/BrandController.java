package app.controller;

import app.service.BrandService;
import app.utils.PinYinUtil;
import app.utils.ResponceResult;
import app.vo.Brand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;


@Controller
public class BrandController {

    @Autowired
    private BrandService brandService;


    @ResponseBody
    @GetMapping("/api/brand")
    public ResponceResult<Brand>  listAll(){
        ResponceResult<Brand> result ;
        try{
            List<Brand> list = brandService.list();
            result = ResponceResult.successMessage(HttpStatus.OK,"查找成功",list);
        }catch (Exception e){
            result = ResponceResult.failMessage(HttpStatus.NO_CONTENT,"查找失败",null);
        }
        return result;
    }

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


}
