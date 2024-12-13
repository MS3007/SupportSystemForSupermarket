package com.ruoyi.distribute.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;

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
import com.ruoyi.distribute.domain.Distributeresult;
import com.ruoyi.distribute.service.IDistributeresultService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 分配调拨Controller
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
@RestController
@RequestMapping("/distribute/distributeresult")
public class DistributeresultController extends BaseController
{
    @Autowired
    private IDistributeresultService distributeresultService;

    /**
     * 查询分配调拨列表
     */

    @GetMapping("/list")
    public TableDataInfo list(Distributeresult distributeresult)
    {
        startPage();
        List<Distributeresult> list = distributeresultService.selectDistributeresultList(distributeresult);
        System.out.println(list);
        return getDataTable(list);
    }

    /**
     * 导出分配调拨列表
     */
    @Log(title = "分配调拨", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Distributeresult distributeresult)
    {
        List<Distributeresult> list = distributeresultService.selectDistributeresultList(distributeresult);
        ExcelUtil<Distributeresult> util = new ExcelUtil<Distributeresult>(Distributeresult.class);
        util.exportExcel(response, list, "分配调拨数据");
    }

    /**
     * 获取分配调拨详细信息
     */

    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {

        return success(distributeresultService.selectDistributeresultById(id));
    }

    /**
     * 新增分配调拨
     */

    @Log(title = "分配调拨", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Distributeresult distributeresult)
    {
        return toAjax(distributeresultService.insertDistributeresult(distributeresult));
    }

    /**
     * 修改分配调拨
     */

    @Log(title = "分配调拨", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Distributeresult distributeresult)
    {
        return toAjax(distributeresultService.updateDistributeresult(distributeresult));
    }

    /**
     * 删除分配调拨
     */

    @Log(title = "分配调拨", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(distributeresultService.deleteDistributeresultByIds(ids));
    }

    /**
     * 库存汇总
     */

    @GetMapping("/invsummary")
    public AjaxResult getInvSummary() {
        List<Map<String, Object>> summary = distributeresultService.getInvSummary();
        return AjaxResult.success(summary);
    }

    /**
     * 物资申请汇总
     */

    @GetMapping("/summary")
    public AjaxResult getAPSummary() {
        List<Map<String, Object>> summary = distributeresultService.getApSummary();
        return AjaxResult.success(summary);
    }

    /**
     * 物资申请汇总
     */

    @GetMapping("/calallocation")
    public AjaxResult calculateAllocation() {
        List<Map<String, Object>> summary = distributeresultService.calculateAllocation();
        return AjaxResult.success(summary);
    }

    /**
     * 提交物资分配人工干预
     */

    @PostMapping("/subCgCalAllocation")
    public AjaxResult subCgCalAllocation(@RequestBody List<Map<String, Object>> subCgCalAllocation)
    {
        List<Map<String, Object>> distributeresult=distributeresultService.distribute(subCgCalAllocation);
        return AjaxResult.success(distributeresult);
    }

    /**
     * 提交物资调拨结果人工干预
     */

    @PostMapping("/subCgDistributeRes")
    public AjaxResult subCgDistributeRes(@RequestBody List<Map<String, Object>> subCgDistributeRes)
    {
        distributeresultService.saveDistributeresult(subCgDistributeRes);
        return AjaxResult.success();
    }
}
