package app.controller;


import app.utils.FileUtils;
import com.sun.org.apache.xpath.internal.operations.Mult;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
public class TestController {

    @Value("${shopimgpath}")
    private String dirPath ;

    @ResponseBody
    @GetMapping("/api/aa")
    public String go(HttpServletRequest request){
        String content = request.getParameter("content");

        System.out.println(content);
        System.out.println("已经请求");
        return content;
    }
    @ResponseBody
    @GetMapping("/api/bb")
    public String go(){

        return null;
    }

}
