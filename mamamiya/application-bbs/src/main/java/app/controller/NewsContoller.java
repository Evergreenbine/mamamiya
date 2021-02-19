package app.controller;

import app.service.impl.NewsService;
import app.vo.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
public class NewsContoller {
    @Autowired
    private NewsService newsService;

    @GetMapping("/api/getAllNews")
    @ResponseBody
    public  List<ArrayList> getAll(HashMap map){
     return    newsService.listAll(map);
    }

}
