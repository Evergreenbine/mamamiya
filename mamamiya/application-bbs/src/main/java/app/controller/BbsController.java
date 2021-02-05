package app.controller;

import app.service.impl.BbsService;
import app.utils.ResponceResult;
import app.vo.Circle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
@Controller
public class BbsController {
    @Autowired
    private BbsService bbsService;

    @GetMapping("/api/circle")
    @ResponseBody
    public ResponceResult listCircle(){
        ResponceResult res = null;
        List<Circle> circleList = bbsService.listCircle();
        res=ResponceResult.successMessage(HttpStatus.OK,"处理完成",circleList);
        return res;
    }
}
