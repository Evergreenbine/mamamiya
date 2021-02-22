package app.service;

import app.vo.CommentGood;
import app.vo.Milk;

import javax.servlet.http.HttpServletRequest;
import javax.swing.*;
import java.util.List;
import java.util.Map;

public interface MilkService {
//    查询商品分类
    List<Map> queryGoodCata();

    List<Milk> list();
//    好评商品
    List<Milk> goodmilklist(Integer gcid);
//    带条件查询
    List<Milk> list(Map m);

    Integer purchase(Integer useraccont,List<Milk> milk,double needmoney);

//    查询具体商品
    Milk specificGood(Integer gid);

    List<Milk> lastestMilk(Integer gcid);

    List<Milk> mostgood(Integer gcid);
//    查询购买记录
    Map myrecord(HttpServletRequest req);

//    查询商品评论
    List<Map> commentgood(HttpServletRequest request);

//    评价商品
    Integer createcommentgood(CommentGood commentGood);

//    用户最新好评
    Map lastestGoodRate(Integer gcid);
}
