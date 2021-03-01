package app.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order {

    private String orderid;
    private String address;
//    1:未支付 2支付 3未发货 4已发货 5认收获
    private Integer state;
    private Double totalmount;
    private  int totalnums;
    private  Integer useraccount;
    private String  createtime;
    private String updatetime;
    private Double paymoney;

//    额外加的信息

}
