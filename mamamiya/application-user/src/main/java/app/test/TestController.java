package app.test;

import app.generic.GenericDao;
import app.test.vo.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {

    @Autowired
    private GenericDao genericDao;


    @GetMapping("/app/hah")
    @ResponseBody
    public Book get(){
        Book book = genericDao.selectOne("app.test.vo.Book." + "book");
        return book;

    }
}
