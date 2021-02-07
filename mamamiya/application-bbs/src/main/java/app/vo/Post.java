package app.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Post {
    //贴子编号
    private Long pid;
    //文章标题
    private String title;
    //文章作者名
    private String author;
    //文章内容
    private String content;
    //创建时间
    private String time;
    //作者账号
    private Integer useraccount;
    //圈子id
    private Integer cid;


}
