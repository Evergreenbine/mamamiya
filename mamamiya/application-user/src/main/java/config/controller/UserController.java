package config.controller;

import config.utils.ResponceResult;
import config.vo.Person;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {
    @PostMapping("/app/login")
    @ResponseBody
    public ResponceResult Login(@RequestBody Person person){
        System.out.println(person);
        System.out.println("已请求");
        ResponceResult<Object> result = new ResponceResult<>();
        result.setHttpStatus(HttpStatus.OK);
        result.setMessage("处理成功");
        return result;
    }
}
