package app.utils;

import lombok.Data;
import org.apache.ibatis.session.RowBounds;
import org.springframework.http.HttpStatus;
@Data
public class ResponceResult<T> {
    /* http状态码*/
    private HttpStatus httpStatus;
    /* 处理信息*/
    private String message;
    /* 返回的结果实体*/
    private T result;
    /* 总条数*/
    private Integer total;
    /* 起始边界*/
    private RowBounds rowBounds;
    /* 每页条数*/
    private Integer numsOfPage;
}
