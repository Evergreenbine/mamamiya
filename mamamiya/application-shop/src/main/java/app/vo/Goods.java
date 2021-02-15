package app.vo;

import lombok.Data;

@Data
public class Goods extends Brand {
        /* 商品id*/
        private Integer gid;
        /* 商品名字*/
        private String gname;
        /* 商品价格*/
        private double price;
        /* 商品图片*/
        private String img;
        /* 商品库存*/
        private Integer store;
        /* 上架时间*/
        private String createtime;
        /* 推荐语*/
        private String recommend;
        /* 评分*/
        private Integer rate;

        /* 选购的数量*/
        private Integer count;
}
