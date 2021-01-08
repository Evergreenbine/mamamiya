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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/app/login")
    @ResponseBody
    public ResponceResult Login(@RequestBody Params<User> params) {
        System.out.println("已经请求"+params);
        ResponceResult responceResult = new ResponceResult();
        String finaltoken = JwtUtils.generateToken(params.getParams().getUsername(), params.getParams().getUserid());
        System.out.println(finaltoken);
        try {
            String token = params.getToken();
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
            responceResult.setHttpStatus(HttpStatus.UNAUTHORIZED);
            responceResult.setMessage("验证失败");
        }
        return responceResult;
    }
}
