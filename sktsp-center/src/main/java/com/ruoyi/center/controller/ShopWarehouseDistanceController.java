package com.ruoyi.center.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.center.domain.opins;
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
import com.ruoyi.center.domain.ShopWarehouseDistance;
import com.ruoyi.center.service.IShopWarehouseDistanceService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 销储距离管理Controller
 *
 * @author ruoyi
 * @date 2024-04-26
 */
@RestController
@RequestMapping("/center/distance")
public class ShopWarehouseDistanceController extends BaseController
{
    @Autowired
    private IShopWarehouseDistanceService shopWarehouseDistanceService;

    /**
     * 查询销储距离管理列表
     */
    @PreAuthorize("@ss.hasPermi('center:distance:list')")
    @GetMapping("/list")
    public TableDataInfo list(ShopWarehouseDistance shopWarehouseDistance)
    {
        startPage();
        List<ShopWarehouseDistance> list = shopWarehouseDistanceService.selectShopWarehouseDistanceList(shopWarehouseDistance);
        return getDataTable(list);
    }

    /**
     * 导出销储距离管理列表
     */
    @PreAuthorize("@ss.hasPermi('center:distance:export')")
    @Log(title = "销储距离管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ShopWarehouseDistance shopWarehouseDistance)
    {
        List<ShopWarehouseDistance> list = shopWarehouseDistanceService.selectShopWarehouseDistanceList(shopWarehouseDistance);
        ExcelUtil<ShopWarehouseDistance> util = new ExcelUtil<ShopWarehouseDistance>(ShopWarehouseDistance.class);
        util.exportExcel(response, list, "销储距离管理数据");
    }

    /**
     * 获取销储距离管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('center:distance:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(shopWarehouseDistanceService.selectShopWarehouseDistanceById(id));
    }

    /**
     * 新增销储距离管理
     */
    @PreAuthorize("@ss.hasPermi('center:distance:add')")
    @Log(title = "销储距离管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ShopWarehouseDistance shopWarehouseDistance)
    {
        return toAjax(shopWarehouseDistanceService.insertShopWarehouseDistance(shopWarehouseDistance));
    }

    /**
     * 修改销储距离管理
     */
    @PreAuthorize("@ss.hasPermi('center:distance:edit')")
    @Log(title = "销储距离管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ShopWarehouseDistance shopWarehouseDistance)
    {
        return toAjax(shopWarehouseDistanceService.updateShopWarehouseDistance(shopWarehouseDistance));
    }

    /**
     * 删除销储距离管理
     */
    @PreAuthorize("@ss.hasPermi('center:distance:remove')")
    @Log(title = "销储距离管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(shopWarehouseDistanceService.deleteShopWarehouseDistanceByIds(ids));
    }

    /**
     * /////查询仓库列表/////
     */
    @PreAuthorize("@ss.hasPermi('center:distance:list')")
    @GetMapping("/ck")
    public List<opins> ck()
    {
        /////查询仓库dept_ID和仓库名称/////
        List<opins> list = shopWarehouseDistanceService.ck();
        return list;
    }

    /**
     * /////查询仓库列表/////
     */
    @PreAuthorize("@ss.hasPermi('center:distance:list')")
    @GetMapping("/sd")
    public List<opins> sd()
    {
        /////查询商店dept_ID和商店名称/////
        List<opins> list = shopWarehouseDistanceService.sd();
        return list;
    }
}
