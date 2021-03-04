package app.vo.shop;

import lombok.*;


@AllArgsConstructor
@NoArgsConstructor
@ToString
@Setter
@Getter
public class Milk extends Goods{



    /* 分类 */
    private String cata;
    /* 阶段 1段 2段*/
    private String stage;
    /* 年龄段*/
    private String age;

    private Integer tag;

    /* 商品价格*/
    private double price;

    private Integer c2;

    private Integer c3;


}
