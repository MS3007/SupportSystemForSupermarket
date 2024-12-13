package com.ruoyi.distribute.mapper;

import java.util.List;
import java.util.Map;

import com.ruoyi.distribute.domain.Distributeresult;

/**
 * 分配调拨Mapper接口
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
public interface DistributeresultMapper 
{
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
     * 删除分配调拨
     * 
     * @param id 分配调拨主键
     * @return 结果
     */
    public int deleteDistributeresultById(Long id);

    /**
     * 批量删除分配调拨
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDistributeresultByIds(Long[] ids);

    /**
     * 库存汇总
     *
     * @return 库存汇总list
     */
    public List<Map<String, Object>> getInvSummary();

    /**
     * 物资申请汇总
     *
     * @return 物资申请汇总list
     */
    public List<Map<String, Object>> getApSummary();
    /**
     * 同一物资总可供量
     *
     * @return 同一物资总可供量list
     */
    public List<Map<String, Object>> getInvIDSummary();

    /**
     * 同一物资总申请量
     *
     * @return 同一物资总申请量
     */
    public List<Map<String, Object>> getIDSummary();

    /**
     * 可供应某一物资的仓库
     *@param good_id 需要删除的数据主键集合
     * @return 可供应某一物资的仓库
     */
    public List<Map<String, Object>> getSingleGoodInv(Integer good_id);

    /**
     * 获取所有仓库之间的距离
     *
     * @return 仓库之间的距离
     */
    public List<Map<String, Object>>getAllDistances();
}
