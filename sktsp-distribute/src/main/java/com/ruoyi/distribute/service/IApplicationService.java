package com.ruoyi.distribute.service;

import java.util.List;
import java.util.Map;

import com.ruoyi.distribute.domain.Application;

/**
 * 物资申请Service接口
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
public interface IApplicationService 
{
    /**
     * 查询物资申请
     * 
     * @param id 物资申请主键
     * @return 物资申请
     */
    public Application selectApplicationById(Long id);

    /**
     * 查询物资申请列表
     * 
     * @param application 物资申请
     * @return 物资申请集合
     */
    public List<Application> selectApplicationList(Application application);

    /**
     * 新增物资申请
     * 
     * @param application 物资申请
     * @return 结果
     */
    public int insertApplication(Application application);

    /**
     * 修改物资申请
     * 
     * @param application 物资申请
     * @return 结果
     */
    public int updateApplication(Application application);

    /**
     * 批量删除物资申请
     * 
     * @param ids 需要删除的物资申请主键集合
     * @return 结果
     */
    public int deleteApplicationByIds(Long[] ids);

    /**
     * 删除物资申请信息
     * 
     * @param id 物资申请主键
     * @return 结果
     */
    public int deleteApplicationById(Long id);

    public void updateAllIsProcessedToOne();
}
