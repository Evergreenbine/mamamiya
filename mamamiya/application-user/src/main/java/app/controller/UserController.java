package app.controller;

import app.service.UserService;
import app.utils.JwtUtils;
import app.utils.Params;
import app.utils.ResponceResult;
import app.vo.User;
import io.jsonwebtoken.Claims;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @ResponseBody
    @GetMapping("/api/user/{useraccount}")
    public ResponceResult<User> getUser(@PathVariable("useraccount") Integer useraccount){
        ResponceResult<User> result = null;
        try{
            User user = userService.findUser(useraccount);
            result = ResponceResult.successMessage(HttpStatus.OK,"处理成功",user);
        }catch (Exception e){
            result = ResponceResult.failMessage(HttpStatus.NO_CONTENT,"处理失败,没有找到该用户",null);
        }
        return result;
    }

    @ResponseBody
    @PostMapping("/api/user")
    public ResponceResult updateOrDeleteUser(@RequestBody User user){
        System.out.println(user);
        ResponceResult result = null;
        int i ;
        if ((i = userService.update(user) ) == 1) {
            result = ResponceResult.successMessage(HttpStatus.OK, "处理完成", null);
        }else {
            result = ResponceResult.failMessage(HttpStatus.EXPECTATION_FAILED,"处理失败",null);
        }
        return result;
    }

    @PostMapping("/api/login")
    @ResponseBody
    public ResponceResult Login(@RequestBody Params<User> params) {
//        ResponceResult responceResult = new ResponceResult();
//        System.out.println("测试热更新");
//        System.out.println("已经请求"+params);
        System.out.println("----------1-------->"+params);
        ResponceResult responceResult = new ResponceResult();
        String finaltoken = JwtUtils.generateToken(params.getParams().getUsername(), params.getParams().getUserid());
//        System.out.println(finaltoken);

        try {
            String token = params.getToken();
            System.out.println(StringUtils.isEmpty(token));
            if (!StringUtils.isEmpty(token)) {
                Claims claims = JwtUtils.verifyJwt(token);
                if (claims != null) {
                    responceResult.setHttpStatus(HttpStatus.OK);
                    responceResult.setMessage("验证通过");
                }else{
                    System.out.println(claims);
                    throw new IllegalStateException();
                }
            }else{
                System.out.println("else块");
                User user = userService.findUser(params);
                System.out.println(user);
                if (user != null) {
                    responceResult.setHttpStatus(HttpStatus.OK);
                    responceResult.setMessage("验证通过");
                    responceResult.setResult(finaltoken);
                }else{
                    throw new IllegalStateException();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            responceResult.setHttpStatus(HttpStatus.UNAUTHORIZED);
            responceResult.setMessage("验证失败");
        }

        return responceResult;
    }

}
