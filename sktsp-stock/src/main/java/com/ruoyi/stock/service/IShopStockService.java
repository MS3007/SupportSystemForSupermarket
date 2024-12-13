package com.ruoyi.stock.service;

import java.util.List;
import com.ruoyi.stock.domain.ShopStock;

/**
 * 超市库存管理Service接口
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
public interface IShopStockService 
{
    /**
     * 查询超市库存管理
     * 
     * @param id 超市库存管理主键
     * @return 超市库存管理
     */
    public ShopStock selectShopStockById(Long id);

    /**
     * 查询超市库存管理列表
     * 
     * @param shopStock 超市库存管理
     * @return 超市库存管理集合
     */
    public List<ShopStock> selectShopStockList(ShopStock shopStock);

    /**
     * 新增超市库存管理
     * 
     * @param shopStock 超市库存管理
     * @return 结果
     */
    public int insertShopStock(ShopStock shopStock);

    /**
     * 修改超市库存管理
     * 
     * @param shopStock 超市库存管理
     * @return 结果
     */
    public int updateShopStock(ShopStock shopStock);

    /**
     * 批量删除超市库存管理
     * 
     * @param ids 需要删除的超市库存管理主键集合
     * @return 结果
     */
    public int deleteShopStockByIds(Long[] ids);

    /**
     * 删除超市库存管理信息
     * 
     * @param id 超市库存管理主键
     * @return 结果
     */
    public int deleteShopStockById(Long id);
}
