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
}
