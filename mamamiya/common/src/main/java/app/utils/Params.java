package app.utils;

import lombok.Data;
import org.apache.ibatis.session.RowBounds;
@Data
public class Params<T> extends ParamsResolver{
    /* 参数对象*/
    private T params;
    /* 分页边界*/
    private RowBounds rowBounds;
}
