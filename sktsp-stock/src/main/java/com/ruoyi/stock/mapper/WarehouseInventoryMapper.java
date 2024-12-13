package com.ruoyi.stock.mapper;

import java.util.List;
import com.ruoyi.stock.domain.WarehouseInventory;

/**
 * 仓库库存管理Mapper接口
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
public interface WarehouseInventoryMapper 
{
    /**
     * 查询仓库库存管理
     * 
     * @param id 仓库库存管理主键
     * @return 仓库库存管理
     */
    public WarehouseInventory selectWarehouseInventoryById(Long id);

    /**
     * 查询仓库库存管理列表
     * 
     * @param warehouseInventory 仓库库存管理
     * @return 仓库库存管理集合
     */
    public List<WarehouseInventory> selectWarehouseInventoryList(WarehouseInventory warehouseInventory);

    /**
     * 新增仓库库存管理
     * 
     * @param warehouseInventory 仓库库存管理
     * @return 结果
     */
    public int insertWarehouseInventory(WarehouseInventory warehouseInventory);

    /**
     * 修改仓库库存管理
     * 
     * @param warehouseInventory 仓库库存管理
     * @return 结果
     */
    public int updateWarehouseInventory(WarehouseInventory warehouseInventory);

    /**
     * 删除仓库库存管理
     * 
     * @param id 仓库库存管理主键
     * @return 结果
     */
    public int deleteWarehouseInventoryById(Long id);

    /**
     * 批量删除仓库库存管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteWarehouseInventoryByIds(Long[] ids);
}
