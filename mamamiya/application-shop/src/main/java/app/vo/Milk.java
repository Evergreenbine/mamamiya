package app.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.HashMap;

@Data
@AllArgsConstructor
public class Milk extends Goods{



    /* 分类 */
    private String cata;

    /* 阶段 1段 2段*/
    private String stage;

    /* 年龄段*/
    private String age;



}
