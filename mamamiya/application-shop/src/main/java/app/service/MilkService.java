package app.service;

import app.vo.Milk;

import java.util.List;
import java.util.Map;

public interface MilkService {
    List<Milk> list();
//    好评商品
    List<Milk> goodmilklist();
//    带条件查询
    List<Milk> list(Map m);

    Integer purchase(List<Milk> milk);

}
