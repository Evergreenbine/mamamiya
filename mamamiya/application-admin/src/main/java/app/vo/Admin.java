package app.vo;

import lombok.*;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Admin {
    private String adminname;
    private String password;
    private String tag;
    private Integer role;
}
