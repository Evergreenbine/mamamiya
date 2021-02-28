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
    private Integer replynums;
    //是否通过审核
    private Integer pass;

    //user的字段，懒得写resultmap了
    private Integer userid;

    private String username;
    private String password;
    private String address;
    private String avator;
    //    状态标志
    private Integer tag;
    private String email;


}
