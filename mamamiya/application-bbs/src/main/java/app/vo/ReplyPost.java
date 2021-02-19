package app.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//回复贴子的对象
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReplyPost {

    private Integer rid;

    private Integer ruid;

    private Integer useraccount;

    private String content;

    private Integer pid;

    private String createtime;
//    这是回复层主，层主的回复内容摘要
    private String rcontent;
//    层主在第几层楼
    private Integer floor;
//    层主的名字
    private String rname;


//    存放用户信息的字段
    private Integer userid;
    private String username;
    private String password;
    private String address;
    private String avator;
    private String monney;
    //    状态标志
    private Integer tag;
    private String email;

}
