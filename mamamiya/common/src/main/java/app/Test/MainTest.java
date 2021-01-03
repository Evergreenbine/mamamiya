package app.Test;

import app.generic.GenericDao;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainTest {
   @Autowired
    private GenericDao genericDao;

   @GetMapping("/app")
   @ResponseBody
   public Book create(){
        return null;
   }
}
