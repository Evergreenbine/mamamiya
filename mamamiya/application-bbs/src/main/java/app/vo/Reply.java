package app.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Reply {
    private Integer rid;
    private Integer ruid;
    private Integer useraccount;
    private String content;
    private Integer qid;
    private String createtime;

    //用户的
    private String username;
    private String avator;
}
