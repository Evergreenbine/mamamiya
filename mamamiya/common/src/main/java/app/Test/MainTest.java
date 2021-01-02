package app.Test;

import app.generic.GenericDao;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainTest {
   @Autowired
    private GenericDao genericDao;

   @GetMapping("/app")
   public void create(){
      System.out.println("已请求");
       genericDao.Select("app.Test.Book"+".nihao");

   }
}
