package app.vo.konwleage;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class KnowlegeVo {
    private Integer kid;
    private String title;
    private String content;
    private String createtime;
    private Double price;
    private Integer isfree;
    private Integer cata;
}
