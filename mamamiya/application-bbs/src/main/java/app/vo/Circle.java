package app.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Circle {
    private Integer cid;
    private List<Integer> follownums;
    private String cname;
    private String introduce;
    private Integer postnums;
}
