package app.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class GoodCata {
    private Integer gcid;
    private String gname;
    private Integer parrentid;
    private Integer isparrent;
    private Integer grade;
}
