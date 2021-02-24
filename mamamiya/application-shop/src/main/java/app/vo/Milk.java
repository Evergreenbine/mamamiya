package app.vo;

import lombok.Data;

@Data
public class Milk extends Goods{

    /* 分类 */
    private String cata;

    /* 阶段 1段 2段*/
    private String stage;

    /* 年龄段*/
    private String age;


    public Milk(Integer id,Double price,Integer count){
        super(id,price,count);
        this.cata = null;
        this.stage= null;
        this.age = null;
    }

    public Milk() {
    }

    public Milk(Integer gid, String gname, double price, String img, Integer store, String createtime, String recommend, Integer rate, Integer count) {
        super(gid, gname, price, img, store, createtime, recommend, rate, count);
    }

    public Milk(Integer gid, double price, Integer count) {
        super(gid, price, count);
    }

    public void setTag(Integer tag){
        super.setTag(tag);
    }
}
