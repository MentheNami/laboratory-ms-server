package org.cqtguniversity.lqms.pojo.vo;

import com.baomidou.mybatisplus.plugins.Page;

import java.util.Collections;
import java.util.List;

/**
 * @author Tangshengyu
 * @create 2018- 03- 12- 11:22
 */

public class ListVO<T> extends BaseVO {

    // 状态
    private boolean status;
    // 总条数
    private long total;
    // 页面大小 默认页面大小：10
    private int rows = 10;
    // 总页码
    private int pages;
    // 当前页码 默认页码：1
    private int page = 1;

    private boolean searchCount;

    private boolean openSort;

    private boolean optimizeCount;

    private String orderByField;

    private boolean isAsc;

    private List<T> records = Collections.emptyList();

    public ListVO() {
    }

    public ListVO(long total, int page, int rows, List<T> records) {
        this.total = total;
        this.page = page;
        this.rows = rows;
        this.records = records;
    }

    public ListVO(List<T> records) {
        this.records = records;
        if(null != records)
            this.total = records.size();
        else
            this.total = 0;
    }

    public ListVO(long total, Page page, List<T> vos) {
        this.total = total;
        this.page = page.getCurrent();
        this.rows = page.getSize();
        this.records = vos;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public int getPages() {
        if(this.rows == 0) {
            return 0;
        } else {
            this.pages = (int)this.total / this.rows;
            // 如果总条数不是页面大小整数倍 需要增加一页  如total  = 99, rows = 10  pages = 10 = 99 % 10 + 1;
            if(this.total % this.rows != 0) {
                ++this.pages;
            }
            return this.pages;
        }
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public boolean isSearchCount() {
        return searchCount;
    }

    public void setSearchCount(boolean searchCount) {
        this.searchCount = searchCount;
    }

    public boolean isOpenSort() {
        return openSort;
    }

    public void setOpenSort(boolean openSort) {
        this.openSort = openSort;
    }

    public boolean isOptimizeCount() {
        return optimizeCount;
    }

    public void setOptimizeCount(boolean optimizeCount) {
        this.optimizeCount = optimizeCount;
    }

    public String getOrderByField() {
        return orderByField;
    }

    public void setOrderByField(String orderByField) {
        this.orderByField = orderByField;
    }

    public boolean isAsc() {
        return isAsc;
    }

    public void setAsc(boolean asc) {
        isAsc = asc;
    }

    public List<T> getRecords() {
        return records;
    }

    public void setRecords(List<T> records) {
        this.records = records;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
