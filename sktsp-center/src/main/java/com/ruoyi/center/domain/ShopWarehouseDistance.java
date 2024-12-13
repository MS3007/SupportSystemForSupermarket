package com.ruoyi.center.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 销储距离管理对象 shop_warehouse_distance
 *
 * @author ruoyi
 * @date 2024-04-26
 */
public class ShopWarehouseDistance extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 商店id */
    @Excel(name = "商店id")
    private Long shopId;

    /** 仓库id */
    @Excel(name = "仓库id")
    private Long warehouseId;

    /** 距离 */
    @Excel(name = "距离")
    private String distance;
    /////新增商店名称/////
    private String shopname;
    /////新增仓库名称/////
    private String warehousename;

    public String getShopname() {
        return shopname;
    }

    public void setShopname(String shopname) {
        this.shopname = shopname;
    }

    public String getWarehousename() {
        return warehousename;
    }

    public void setWarehousename(String warehousename) {
        this.warehousename = warehousename;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setShopId(Long shopId)
    {
        this.shopId = shopId;
    }

    public Long getShopId()
    {
        return shopId;
    }
    public void setWarehouseId(Long warehouseId)
    {
        this.warehouseId = warehouseId;
    }

    public Long getWarehouseId()
    {
        return warehouseId;
    }
    public void setDistance(String distance)
    {
        this.distance = distance;
    }

    public String getDistance()
    {
        return distance;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("shopId", getShopId())
            .append("warehouseId", getWarehouseId())
            .append("distance", getDistance())
            .toString();
    }
}
