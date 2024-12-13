package com.ruoyi.distribute.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

import java.util.Date;

/**
 * 分配调拨对象 distributeresult
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
public class Distributeresult extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 超市id */
    @Excel(name = "超市id")
    private Long shopId;

    /** 超市名称 */
    @Excel(name = "超市id")
    private String shopName;
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    /** 商品名称 */
    @Excel(name = "商品名称")
    private String name;

    /** 仓库id */
    @Excel(name = "仓库id")
    private Long warehouseId;

    /** 仓库名称 */
    @Excel(name = "仓库名称")
    private String warehouseName;

    /** 商品id */
    @Excel(name = "商品id")
    private Long goodId;

    /** 数量 */
    @Excel(name = "数量")
    private Long count;

    /** 调拨日期 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "调拨日期", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date time;



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
    public void setGoodId(Long goodId) 
    {
        this.goodId = goodId;
    }

    public Long getGoodId() 
    {
        return goodId;
    }
    public void setCount(Long count) 
    {
        this.count = count;
    }

    public Long getCount() 
    {
        return count;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }


    public String getWarehouseName() {
        return warehouseName;
    }

    public void setWarehouseName(String warehouseName) {
        this.warehouseName = warehouseName;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Distributeresult{" +
                "id=" + id +
                ", shopId=" + shopId +
                ", shopName='" + shopName + '\'' +
                ", name='" + name + '\'' +
                ", warehouseId=" + warehouseId +
                ", warehouseName='" + warehouseName + '\'' +
                ", goodId=" + goodId +
                ", count=" + count +
                ", time=" + time +
                '}';
    }
}
