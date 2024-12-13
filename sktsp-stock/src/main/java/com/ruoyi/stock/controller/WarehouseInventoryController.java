package com.ruoyi.stock.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.stock.domain.WarehouseInventory;
import com.ruoyi.stock.service.IWarehouseInventoryService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 仓库库存管理Controller
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
@RestController
@RequestMapping("/stock/warehouse_inventory")
public class WarehouseInventoryController extends BaseController
{
    @Autowired
    private IWarehouseInventoryService warehouseInventoryService;

    /**
     * 查询仓库库存管理列表
     */
    @PreAuthorize("@ss.hasPermi('stock:warehouse_inventory:list')")
    @GetMapping("/list")
    public TableDataInfo list(WarehouseInventory warehouseInventory)
    {
        startPage();
        List<WarehouseInventory> list = warehouseInventoryService.selectWarehouseInventoryList(warehouseInventory);
        return getDataTable(list);
    }

    /**
     * 导出仓库库存管理列表
     */
    @PreAuthorize("@ss.hasPermi('stock:warehouse_inventory:export')")
    @Log(title = "仓库库存管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, WarehouseInventory warehouseInventory)
    {
        List<WarehouseInventory> list = warehouseInventoryService.selectWarehouseInventoryList(warehouseInventory);
        ExcelUtil<WarehouseInventory> util = new ExcelUtil<WarehouseInventory>(WarehouseInventory.class);
        util.exportExcel(response, list, "仓库库存管理数据");
    }

    /**
     * 获取仓库库存管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('stock:warehouse_inventory:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(warehouseInventoryService.selectWarehouseInventoryById(id));
    }

    /**
     * 新增仓库库存管理
     */
    @PreAuthorize("@ss.hasPermi('stock:warehouse_inventory:add')")
    @Log(title = "仓库库存管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody WarehouseInventory warehouseInventory)
    {
        return toAjax(warehouseInventoryService.insertWarehouseInventory(warehouseInventory));
    }

    /**
     * 修改仓库库存管理
     */
    @PreAuthorize("@ss.hasPermi('stock:warehouse_inventory:edit')")
    @Log(title = "仓库库存管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody WarehouseInventory warehouseInventory)
    {
        return toAjax(warehouseInventoryService.updateWarehouseInventory(warehouseInventory));
    }

    /**
     * 删除仓库库存管理
     */
    @PreAuthorize("@ss.hasPermi('stock:warehouse_inventory:remove')")
    @Log(title = "仓库库存管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(warehouseInventoryService.deleteWarehouseInventoryByIds(ids));
    }
}
