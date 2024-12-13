package com.ruoyi.distribute.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.center.domain.Goods;
import com.ruoyi.center.service.IGoodsService;
import org.springframework.http.ResponseEntity;
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
import com.ruoyi.distribute.domain.Application;
import com.ruoyi.distribute.service.IApplicationService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 物资申请Controller
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
@RestController
@RequestMapping("/distribute/application")
public class ApplicationController extends BaseController
{
    @Autowired
    private IApplicationService applicationService;
    @Autowired
    private IGoodsService goodsService;
    /**
     * 查询商品管理列表
     */
//    @PreAuthorize("@ss.hasPermi('distribute:application:goodList')")
    @GetMapping("/goodList")
    public ResponseEntity<List<Map<String, String>>> list(Goods goods)
    {
        List<Goods> list = goodsService.selectGoodsList(goods);
        List<Map<String, String>> options= list.stream()
                .map(g -> {
                    Map<String, String> map = new HashMap<>();
                    map.put("value", String.valueOf(g.getId()));
                    map.put("label", g.getName());
                    return map;
                })
                .collect(Collectors.toList());
        System.out.println(options);
        return ResponseEntity.ok(options);
    }

    /**
     * 查询物资申请列表
     */
    @PreAuthorize("@ss.hasPermi('distribute:application:list')")
    @GetMapping("/list")
    public TableDataInfo list(Application application)
    {
        startPage();
        List<Application> list = applicationService.selectApplicationList(application);
        return getDataTable(list);
    }

    /**
     * 导出物资申请列表
     */
    @PreAuthorize("@ss.hasPermi('distribute:application:export')")
    @Log(title = "物资申请", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Application application)
    {
        List<Application> list = applicationService.selectApplicationList(application);
        ExcelUtil<Application> util = new ExcelUtil<Application>(Application.class);
        util.exportExcel(response, list, "物资申请数据");
    }

    /**
     * 获取物资申请详细信息
     */
    @PreAuthorize("@ss.hasPermi('distribute:application:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(applicationService.selectApplicationById(id));
    }

    /**
     * 新增物资申请
     */
    @PreAuthorize("@ss.hasPermi('distribute:application:add')")
    @Log(title = "物资申请", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Application application)
    {
        return toAjax(applicationService.insertApplication(application));
    }

    /**
     * 修改物资申请
     */
    @PreAuthorize("@ss.hasPermi('distribute:application:edit')")
    @Log(title = "物资申请", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Application application)
    {
        return toAjax(applicationService.updateApplication(application));
    }

    /**
     * 删除物资申请
     */
    @PreAuthorize("@ss.hasPermi('distribute:application:remove')")
    @Log(title = "物资申请", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(applicationService.deleteApplicationByIds(ids));
    }




}
