package app.utils;

import com.mysql.cj.result.Row;
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

    public static <T> ResponceResult successMessage(HttpStatus status, String message, T result, Integer total, RowBounds rowBound, Integer numsOfPage){
        ResponceResult success = successMessage(status, message, result);
        success.setTotal(total);
        success.setRowBounds(rowBound);
        success.setNumsOfPage(numsOfPage);
        return success;
    }
    public static <T> ResponceResult successMessage(HttpStatus status, String message, T result, Integer total){
        ResponceResult success = successMessage(status, message, result);
        success.setTotal(total);
        return success;
    }

    public static  <T> ResponceResult  successMessage(HttpStatus status,String message,T result){
        ResponceResult<T> success = new ResponceResult();
        success.setHttpStatus(status);
        success.setMessage(message);
        success.setResult(result);
        return success;
    }
    public static  <T> ResponceResult  failMessage(HttpStatus status,String message,T result){
        ResponceResult<T> fail = new ResponceResult();
        fail.setHttpStatus(status);
        fail.setMessage(message);
        fail.setResult(result);
        return fail;
    }
}
