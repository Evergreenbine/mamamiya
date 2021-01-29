package app.controller;

import app.service.MilkService;
import app.utils.ResponceResult;
import app.vo.Milk;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class MilkController {

    @Autowired
    private MilkService milkService;

    @GetMapping("/api/milks")
    @ResponseBody
    public ResponceResult<List<Milk>> listMilk(){
        ResponceResult result = null;

        try {

            List<Milk> list = milkService.list();

            result = ResponceResult.successMessage(HttpStatus.OK,"处理成功",list);
        }catch (Exception e){
            result = ResponceResult.successMessage(HttpStatus.OK,"处理失败",null);
        }
        return  result;
    }
}
