package app.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class User {

    private Integer userid;
    private String useraccount;
    private String username;
    private String password;
    private String address;
    private String avator;
//    状态标志
    private Integer tag;
    private String email;
}
