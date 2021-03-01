package app.controller;

import app.service.OrderService;
import app.vo.Milk;
import app.vo.Order;
import cn.hutool.core.date.DateUtil;
import cn.hutool.json.JSON;
import cn.hutool.json.JSONConverter;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;



//    创建订单
    @PostMapping("/api/createorder")
    @ResponseBody
    public Map createOrder(HttpServletRequest req, @RequestBody List<Milk> milk){
        return   orderService.createOrder(req,milk);
    };

//    查询订单
    @GetMapping("/api/lookorder")
    @ResponseBody
    public Map checkOrder(HttpServletRequest req){
        String orderid = req.getParameter("orderid");
        return orderService.checkOrder(orderid);
    }

//    查询所有订单
    @GetMapping("/api/allorder")
    @ResponseBody
    public Map getAllOrder(HttpServletRequest req){
//        useraccount不能为空
        String useraccount = req.getParameter("useraccount");
        Integer i = null;
        if (!StringUtils.isEmpty(useraccount)) {
            i = Integer.getInteger(useraccount);
        }
//        state可以为空
        String s = req.getParameter("state");
        if (!StringUtils.isEmpty(s)) {
          Integer state = Integer.parseInt(s);
        }

        HashMap<Object, Object> params = new HashMap<>();
        params.put("useraccount",useraccount);
        params.put("state",s);
        return orderService.checkAllOrder(params);
    }

//   更新订单信息
    @GetMapping("/api/updateorder")
    @ResponseBody
    public Integer updateOrder(HttpServletRequest req){
        String orderid = req.getParameter("orderid");
        String state = req.getParameter("state");
        Integer s = null;
        if (!StringUtils.isEmpty(state)) {
            s = Integer.parseInt(state);
        }
        HashMap<Object, Object> map = new HashMap<>();
        map.put("orderid",orderid);
        map.put("state",s);
        String updatetime = DateUtil.format(new Date(),"yyyy/MM/dd/HH/mm/ss");
        map.put("updatetime",updatetime);
        return orderService.updateOrder(map);
    }

    @PostMapping("/api/continuepay")
    @ResponseBody
    public Integer continuepay(HttpServletRequest req){
        String order = req.getParameter("order");
        JSONObject jsonObject = JSONUtil.parseObj(order);
        Order o = new Order();

        o.setOrderid((String) jsonObject.get("orderid"));

        return orderService.continPay(req,o);
    }


//    取消订单
    @GetMapping("/api/cancelorder")
    @ResponseBody
    public Integer cancelOrder(HttpServletRequest req){
        String orderid = req.getParameter("orderid");
        return orderService.cancelOrder(orderid,null);
    }
}
