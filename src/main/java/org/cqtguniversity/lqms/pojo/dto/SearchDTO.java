package org.cqtguniversity.lqms.pojo.dto;

/**
 * @author Tangshengyu
 * @create 2018- 03- 19- 15:32
 */

public class SearchDTO extends BaseDTO {

    // 当前页码 默认页码：1
    private int page = 1;
    // 页面大小 默认页面大小：10
    private int rows = 10;

    public SearchDTO() {
    }

    public SearchDTO(int page, int rows) {
        this.page = page;
        this.rows = rows;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }

    public boolean isLegitimate() {
        return this.page > 0 && this.rows > 0;
    }

    @Override
    public String toString() {
        return super.toString() + "SearchDTO{" +
                "page=" + page +
                ", rows=" + rows +
                '}';
    }
}
