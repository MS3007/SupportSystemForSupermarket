package com.ruoyi.stock.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.stock.mapper.ShopStockMapper;
import com.ruoyi.stock.domain.ShopStock;
import com.ruoyi.stock.service.IShopStockService;

/**
 * 超市库存管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
@Service
public class ShopStockServiceImpl implements IShopStockService 
{
    @Autowired
    private ShopStockMapper shopStockMapper;

    /**
     * 查询超市库存管理
     * 
     * @param id 超市库存管理主键
     * @return 超市库存管理
     */
    @Override
    public ShopStock selectShopStockById(Long id)
    {
        return shopStockMapper.selectShopStockById(id);
    }

    /**
     * 查询超市库存管理列表
     * 
     * @param shopStock 超市库存管理
     * @return 超市库存管理
     */
    @Override
    public List<ShopStock> selectShopStockList(ShopStock shopStock)
    {
        return shopStockMapper.selectShopStockList(shopStock);
    }

    /**
     * 新增超市库存管理
     * 
     * @param shopStock 超市库存管理
     * @return 结果
     */
    @Override
    public int insertShopStock(ShopStock shopStock)
    {
        return shopStockMapper.insertShopStock(shopStock);
    }

    /**
     * 修改超市库存管理
     * 
     * @param shopStock 超市库存管理
     * @return 结果
     */
    @Override
    public int updateShopStock(ShopStock shopStock)
    {
        return shopStockMapper.updateShopStock(shopStock);
    }

    /**
     * 批量删除超市库存管理
     * 
     * @param ids 需要删除的超市库存管理主键
     * @return 结果
     */
    @Override
    public int deleteShopStockByIds(Long[] ids)
    {
        return shopStockMapper.deleteShopStockByIds(ids);
    }

    /**
     * 删除超市库存管理信息
     * 
     * @param id 超市库存管理主键
     * @return 结果
     */
    @Override
    public int deleteShopStockById(Long id)
    {
        return shopStockMapper.deleteShopStockById(id);
    }
}
