package com.mamamiya.infrastructure.util;

import java.util.List;

public class PagedResult<T> {
    private List<T> data;
    private long total;

    public PagedResult() {
    }
}
