package app.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//回复资讯的对象
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReplyInfo {
   private Integer ruid;
   private Integer useraccount;
   private String content;
   private Integer infoid;
   private String createtime;
   private String  rcontent;
   private Integer floor;
   private String rname;
}
