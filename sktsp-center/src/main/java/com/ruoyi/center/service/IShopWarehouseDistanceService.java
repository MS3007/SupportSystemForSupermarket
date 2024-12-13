package com.ruoyi.center.service;

import java.util.List;
import com.ruoyi.center.domain.ShopWarehouseDistance;
import com.ruoyi.center.domain.opins;

/**
 * 销储距离管理Service接口
 *
 * @author ruoyi
 * @date 2024-04-26
 */
public interface IShopWarehouseDistanceService
{
    /**
     * 查询销储距离管理
     *
     * @param id 销储距离管理主键
     * @return 销储距离管理
     */
    public ShopWarehouseDistance selectShopWarehouseDistanceById(Long id);

    /**
     * 查询销储距离管理列表
     *
     * @param shopWarehouseDistance 销储距离管理
     * @return 销储距离管理集合
     */
    public List<ShopWarehouseDistance> selectShopWarehouseDistanceList(ShopWarehouseDistance shopWarehouseDistance);

    /**
     * 新增销储距离管理
     *
     * @param shopWarehouseDistance 销储距离管理
     * @return 结果
     */
    public int insertShopWarehouseDistance(ShopWarehouseDistance shopWarehouseDistance);

    /**
     * 修改销储距离管理
     *
     * @param shopWarehouseDistance 销储距离管理
     * @return 结果
     */
    public int updateShopWarehouseDistance(ShopWarehouseDistance shopWarehouseDistance);

    /**
     * 批量删除销储距离管理
     *
     * @param ids 需要删除的销储距离管理主键集合
     * @return 结果
     */
    public int deleteShopWarehouseDistanceByIds(Long[] ids);

    /**
     * 删除销储距离管理信息
     *
     * @param id 销储距离管理主键
     * @return 结果
     */
    public int deleteShopWarehouseDistanceById(Long id);

    /**
     * 获取仓库列表
     */
    public List<opins> ck();

    /**
     * 获取商店列表
     */
    public List<opins> sd();
}
