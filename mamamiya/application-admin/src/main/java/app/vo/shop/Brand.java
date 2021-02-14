package app.vo.shop;

import lombok.Getter;
import lombok.Setter;


@Setter
@Getter
public class Brand {
    private int bid;
    private String bname;

    public Brand() {
    }

    public Brand(int bid, String bname) {
        this.bid = bid;
        this.bname = bname;
    }


}
