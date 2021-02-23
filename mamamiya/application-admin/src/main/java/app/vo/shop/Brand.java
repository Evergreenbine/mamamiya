package app.vo.shop;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;


@Setter
@Getter
@AllArgsConstructor
public class Brand {
    private int bid;
    private String bname;
    private String img;
    private Integer gcid;
    private Integer tag;

    public Brand() {
    }

    public Brand(Integer bid,String bname){
        this.bid= bid;
        this.bname = bname;
    }




}
