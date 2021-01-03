package app.utils;

import org.apache.ibatis.session.RowBounds;

public class Params<T> extends ParamsResolver {
    /* 参数对象*/
    private T params;
    /* 分页边界*/
    private RowBounds rowBounds;
}
