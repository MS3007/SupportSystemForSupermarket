package com.ruoyi.distribute.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 物资申请对象 application
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
public class Application extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 申请日期 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "申请日期", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date date;

    /** 商店id */
    @Excel(name = "商店id")
    private Long shopId;
    /** 商品名称 */
    @Excel(name = "商品名称")
    private String name;
    /** 商品id */
    @Excel(name = "商品id")
    private Long goodId;

    /** 数量 */
    @Excel(name = "数量")
    private Long count;

    /** 是否已兑现 */
    @Excel(name = "是否已兑现")
    private Long isProcessed;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setDate(Date date) 
    {
        this.date = date;
    }

    public Date getDate() 
    {
        return date;
    }
    public void setShopId(Long shopId) 
    {
        this.shopId = shopId;
    }

    public Long getShopId() 
    {
        return shopId;
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
    public void setIsProcessed(Long isProcessed) 
    {
        this.isProcessed = isProcessed;
    }

    public Long getIsProcessed() 
    {
        return isProcessed;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Application{" +
                "id=" + id +
                ", date=" + date +
                ", shopId=" + shopId +
                ", name='" + name + '\'' +
                ", goodId=" + goodId +
                ", count=" + count +
                ", isProcessed=" + isProcessed +
                '}';
    }
}
