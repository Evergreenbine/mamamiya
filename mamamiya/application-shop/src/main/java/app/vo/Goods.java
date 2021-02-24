package app.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

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
        /* 购买人账号*/
        private Integer useraccount;

        /* 选购的数量*/
        private Integer count;

        private Integer qcid;

        private Integer Tag;

        public Goods() {
        }

        public Goods(Integer gid, String gname, double price, String img, Integer store, String createtime, String recommend, Integer rate, Integer count) {
                this.gid = gid;
                this.gname = gname;
                this.price = price;
                this.img = img;
                this.store = store;
                this.createtime = createtime;
                this.recommend = recommend;
                this.rate = rate;
                this.count = count;
        }

        public Goods(Integer gid, double price, Integer count){

                this.gid = gid;

                this.price = price;

                this.count = count;
        }

}
