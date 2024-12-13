package com.ruoyi.distribute.service;

import java.util.List;
import java.util.Map;

import com.ruoyi.distribute.domain.Distributeresult;

/**
 * 分配调拨Service接口
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
public interface IDistributeresultService 
{
;
    /**
     * 查询分配调拨
     * 
     * @param id 分配调拨主键
     * @return 分配调拨
     */
    public Distributeresult selectDistributeresultById(Long id);

    /**
     * 查询分配调拨列表
     * 
     * @param distributeresult 分配调拨
     * @return 分配调拨集合
     */
    public List<Distributeresult> selectDistributeresultList(Distributeresult distributeresult);

    /**
     * 新增分配调拨
     * 
     * @param distributeresult 分配调拨
     * @return 结果
     */
    public int insertDistributeresult(Distributeresult distributeresult);

    /**
     * 修改分配调拨
     * 
     * @param distributeresult 分配调拨
     * @return 结果
     */
    public int updateDistributeresult(Distributeresult distributeresult);

    /**
     * 批量删除分配调拨
     * 
     * @param ids 需要删除的分配调拨主键集合
     * @return 结果
     */
    public int deleteDistributeresultByIds(Long[] ids);

    /**
     * 删除分配调拨信息
     * 
     * @param id 分配调拨主键
     * @return 结果
     */
    public int deleteDistributeresultById(Long id);


    /**
     * 物资申请汇总
     *
     * @return 获取物资申请汇总
     */
    List<Map<String, Object>> getApSummary();


    /**
     * 库存汇总
     *
     * @return 库存汇总
     */
    List<Map<String, Object>> getInvSummary();

    /**
     * 分配方案计算
     *
     * @return 分配方案
     */
    public List<Map<String, Object>> calculateAllocation();


    /**
     * 物资调拨
     *
     * @return 物资调拨结果
     */
    public List<Map<String, Object>> distribute(List<Map<String, Object>> subCgCalAllocation);

    /**
     * 保存分配结果
     *
     * @param subCgDistributeRes 分配结果
     */
    public void saveDistributeresult(List<Map<String, Object>> subCgDistributeRes);
}
