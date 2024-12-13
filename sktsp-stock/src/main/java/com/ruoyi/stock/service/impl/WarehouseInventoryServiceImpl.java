package com.ruoyi.stock.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.stock.mapper.WarehouseInventoryMapper;
import com.ruoyi.stock.domain.WarehouseInventory;
import com.ruoyi.stock.service.IWarehouseInventoryService;

/**
 * 仓库库存管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
@Service
public class WarehouseInventoryServiceImpl implements IWarehouseInventoryService 
{
    @Autowired
    private WarehouseInventoryMapper warehouseInventoryMapper;

    /**
     * 查询仓库库存管理
     * 
     * @param id 仓库库存管理主键
     * @return 仓库库存管理
     */
    @Override
    public WarehouseInventory selectWarehouseInventoryById(Long id)
    {
        return warehouseInventoryMapper.selectWarehouseInventoryById(id);
    }

    /**
     * 查询仓库库存管理列表
     * 
     * @param warehouseInventory 仓库库存管理
     * @return 仓库库存管理
     */
    @Override
    public List<WarehouseInventory> selectWarehouseInventoryList(WarehouseInventory warehouseInventory)
    {
        return warehouseInventoryMapper.selectWarehouseInventoryList(warehouseInventory);
    }

    /**
     * 新增仓库库存管理
     * 
     * @param warehouseInventory 仓库库存管理
     * @return 结果
     */
    @Override
    public int insertWarehouseInventory(WarehouseInventory warehouseInventory)
    {
        return warehouseInventoryMapper.insertWarehouseInventory(warehouseInventory);
    }

    /**
     * 修改仓库库存管理
     * 
     * @param warehouseInventory 仓库库存管理
     * @return 结果
     */
    @Override
    public int updateWarehouseInventory(WarehouseInventory warehouseInventory)
    {
        return warehouseInventoryMapper.updateWarehouseInventory(warehouseInventory);
    }

    /**
     * 批量删除仓库库存管理
     * 
     * @param ids 需要删除的仓库库存管理主键
     * @return 结果
     */
    @Override
    public int deleteWarehouseInventoryByIds(Long[] ids)
    {
        return warehouseInventoryMapper.deleteWarehouseInventoryByIds(ids);
    }

    /**
     * 删除仓库库存管理信息
     * 
     * @param id 仓库库存管理主键
     * @return 结果
     */
    @Override
    public int deleteWarehouseInventoryById(Long id)
    {
        return warehouseInventoryMapper.deleteWarehouseInventoryById(id);
    }
}
