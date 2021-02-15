package app.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Question {
    private Integer qid;
    private String useraccount;
    private String title;
    private String content;
    private Integer qcid;
    private String createtime;

//    用户的
    private String username;
    private String avator;

}
