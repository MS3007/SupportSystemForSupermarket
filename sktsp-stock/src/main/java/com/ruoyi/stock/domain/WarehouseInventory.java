package com.ruoyi.stock.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class WarehouseInventory extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long id;

    @Excel(name = "仓库id")
    private Long warehouseId;

    @Excel(name = "商品id")
    private Long goodsId;

    @Excel(name = "数量")
    private Long sum;
    @Excel(name = "名字")
    private String deptName;

    // 新增属性的getter和setter方法
    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }
    // 新增的属性
    private String goodsName;
    private String warehouseName;

    // 现有属性的getter和setter方法
    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setWarehouseId(Long warehouseId) {
        this.warehouseId = warehouseId;
    }

    public Long getWarehouseId() {
        return warehouseId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public Long getGoodsId() {
        return goodsId;
    }

    public void setSum(Long sum) {
        this.sum = sum;
    }

    public Long getSum() {
        return sum;
    }

    // 新增属性的getter和setter方法
    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getWarehouseName() {
        return warehouseName;
    }

    public void setWarehouseName(String warehouseName) {
        this.warehouseName = warehouseName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("warehouseId", getWarehouseId())
                .append("goodsId", getGoodsId())
                .append("sum", getSum())
                .append("goodsName", getGoodsName())
                .append("warehouseName", getWarehouseName())
                .append("deptName", getDeptName())
                .toString();
    }
}
