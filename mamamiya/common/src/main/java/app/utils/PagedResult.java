package app.utils;

import java.util.List;

public class PagedResult<T> implements java.io.Serializable {

    private List<T> data;
    private long total;

    /**
     * 默认的构造方法。
     */
    public PagedResult() {
    }

    /**
     * 自定义的构造方法。
     *
     * @param data List<T>
     * @param total long
     */
    public PagedResult(List<T> data, long total) {
        this.data = data;
        this.total = total;
    }

    /**
     * 获取data。
     *
     * @return List<T>
     */
    public List<T> getData() {
        return data;
    }

    /**
     * 设置data。
     *
     * @param data List<T>
     */
    public void setData(List<T> data) {
        this.data = data;
    }

    /**
     * 获取total。
     *
     * @return long
     */
    public long getTotal() {
        return total;
    }

    /**
     * 设置total。
     *
     * @param total  long
     */
    public void setTotal(long total) {
        this.total = total;
    }
}