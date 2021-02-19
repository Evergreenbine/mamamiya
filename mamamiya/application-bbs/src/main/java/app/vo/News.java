package app.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class News {
    private Integer infoid;
    private String title;
    private String content;
    private Integer icid;
    private String createtime;
    private Integer tag;

    private String tagname;
    private String avator;
}
