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
import com.ruoyi.stock.domain.ShopStock;
import com.ruoyi.stock.service.IShopStockService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 超市库存管理Controller
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
@RestController
@RequestMapping("/stock/shop_stock")
public class ShopStockController extends BaseController
{
    @Autowired
    private IShopStockService shopStockService;

    /**
     * 查询超市库存管理列表
     */
    @PreAuthorize("@ss.hasPermi('stock:shop_stock:list')")
    @GetMapping("/list")
    public TableDataInfo list(ShopStock shopStock)
    {
        startPage();
        List<ShopStock> list = shopStockService.selectShopStockList(shopStock);
        return getDataTable(list);
    }

    /**
     * 导出超市库存管理列表
     */
    @PreAuthorize("@ss.hasPermi('stock:shop_stock:export')")
    @Log(title = "超市库存管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ShopStock shopStock)
    {
        List<ShopStock> list = shopStockService.selectShopStockList(shopStock);
        ExcelUtil<ShopStock> util = new ExcelUtil<ShopStock>(ShopStock.class);
        util.exportExcel(response, list, "超市库存管理数据");
    }

    /**
     * 获取超市库存管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('stock:shop_stock:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(shopStockService.selectShopStockById(id));
    }

    /**
     * 新增超市库存管理
     */
    @PreAuthorize("@ss.hasPermi('stock:shop_stock:add')")
    @Log(title = "超市库存管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ShopStock shopStock)
    {
        System.out.println(shopStock);
        return toAjax(shopStockService.insertShopStock(shopStock));
    }

    /**
     * 修改超市库存管理
     */
    @PreAuthorize("@ss.hasPermi('stock:shop_stock:edit')")
    @Log(title = "超市库存管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ShopStock shopStock)
    {
        return toAjax(shopStockService.updateShopStock(shopStock));
    }

    /**
     * 删除超市库存管理
     */
    @PreAuthorize("@ss.hasPermi('stock:shop_stock:remove')")
    @Log(title = "超市库存管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(shopStockService.deleteShopStockByIds(ids));
    }
}
