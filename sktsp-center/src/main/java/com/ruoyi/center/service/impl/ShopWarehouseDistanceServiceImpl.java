package com.ruoyi.center.service.impl;

import java.util.List;

import com.ruoyi.center.domain.opins;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.center.mapper.ShopWarehouseDistanceMapper;
import com.ruoyi.center.domain.ShopWarehouseDistance;
import com.ruoyi.center.service.IShopWarehouseDistanceService;

/**
 * 销储距离管理Service业务层处理
 *
 * @author ruoyi
 * @date 2024-04-26
 */
@Service
public class ShopWarehouseDistanceServiceImpl implements IShopWarehouseDistanceService
{
    @Autowired
    private ShopWarehouseDistanceMapper shopWarehouseDistanceMapper;

    /**
     * 查询销储距离管理
     *
     * @param id 销储距离管理主键
     * @return 销储距离管理
     */
    @Override
    public ShopWarehouseDistance selectShopWarehouseDistanceById(Long id)
    {
        return shopWarehouseDistanceMapper.selectShopWarehouseDistanceById(id);
    }

    /**
     * 查询销储距离管理列表
     *
     * @param shopWarehouseDistance 销储距离管理
     * @return 销储距离管理
     */
    @Override
    public List<ShopWarehouseDistance> selectShopWarehouseDistanceList(ShopWarehouseDistance shopWarehouseDistance)
    {
        return shopWarehouseDistanceMapper.selectShopWarehouseDistanceList(shopWarehouseDistance);
    }

    /**
     * 新增销储距离管理
     *
     * @param shopWarehouseDistance 销储距离管理
     * @return 结果
     */
    @Override
    public int insertShopWarehouseDistance(ShopWarehouseDistance shopWarehouseDistance)
    {
        return shopWarehouseDistanceMapper.insertShopWarehouseDistance(shopWarehouseDistance);
    }

    /**
     * 修改销储距离管理
     *
     * @param shopWarehouseDistance 销储距离管理
     * @return 结果
     */
    @Override
    public int updateShopWarehouseDistance(ShopWarehouseDistance shopWarehouseDistance)
    {
        return shopWarehouseDistanceMapper.updateShopWarehouseDistance(shopWarehouseDistance);
    }

    /**
     * 批量删除销储距离管理
     *
     * @param ids 需要删除的销储距离管理主键
     * @return 结果
     */
    @Override
    public int deleteShopWarehouseDistanceByIds(Long[] ids)
    {
        return shopWarehouseDistanceMapper.deleteShopWarehouseDistanceByIds(ids);
    }

    /**
     * 删除销储距离管理信息
     *
     * @param id 销储距离管理主键
     * @return 结果
     */
    @Override
    public int deleteShopWarehouseDistanceById(Long id)
    {
        return shopWarehouseDistanceMapper.deleteShopWarehouseDistanceById(id);
    }

    @Override
    public List<opins> ck() {
        return shopWarehouseDistanceMapper.ck();
    }

    @Override
    public List<opins> sd() {
        return shopWarehouseDistanceMapper.sd();
    }

}
