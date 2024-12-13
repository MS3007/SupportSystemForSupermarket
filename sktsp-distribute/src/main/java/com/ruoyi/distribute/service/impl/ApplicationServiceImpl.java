package com.ruoyi.distribute.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.distribute.mapper.ApplicationMapper;
import com.ruoyi.distribute.domain.Application;
import com.ruoyi.distribute.service.IApplicationService;

/**
 * 物资申请Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
@Service
public class ApplicationServiceImpl implements IApplicationService 
{
    @Autowired
    private ApplicationMapper applicationMapper;

    /**
     * 查询物资申请
     * 
     * @param id 物资申请主键
     * @return 物资申请
     */
    @Override
    public Application selectApplicationById(Long id)
    {
        return applicationMapper.selectApplicationById(id);
    }

    /**
     * 查询物资申请列表
     * 
     * @param application 物资申请
     * @return 物资申请
     */
    @Override
    public List<Application> selectApplicationList(Application application)
    {
        return applicationMapper.selectApplicationList(application);
    }

    /**
     * 新增物资申请
     * 
     * @param application 物资申请
     * @return 结果
     */
    @Override
    public int insertApplication(Application application)
    {
        return applicationMapper.insertApplication(application);
    }

    /**
     * 修改物资申请
     * 
     * @param application 物资申请
     * @return 结果
     */
    @Override
    public int updateApplication(Application application)
    {
        return applicationMapper.updateApplication(application);
    }

    /**
     * 批量删除物资申请
     * 
     * @param ids 需要删除的物资申请主键
     * @return 结果
     */
    @Override
    public int deleteApplicationByIds(Long[] ids)
    {
        return applicationMapper.deleteApplicationByIds(ids);
    }

    /**
     * 删除物资申请信息
     * 
     * @param id 物资申请主键
     * @return 结果
     */
    @Override
    public int deleteApplicationById(Long id)
    {
        return applicationMapper.deleteApplicationById(id);
    }

    @Override
    public void updateAllIsProcessedToOne() {
        applicationMapper.updateAllIsProcessedToOne();
    }


}
