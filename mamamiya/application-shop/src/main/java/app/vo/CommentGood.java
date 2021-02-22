package app.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//评价商品
@NoArgsConstructor
@AllArgsConstructor
@Data
public class CommentGood {
    private Integer gid;
    private Integer useraccount;
    private String content;
    private String createtime;
    private Integer rate;
}
