package com.ruoyi.center.mapper;

import java.util.List;
import com.ruoyi.center.domain.ShopWarehouseDistance;
import com.ruoyi.center.domain.opins;

/**
 * 销储距离管理Mapper接口
 *
 * @author ruoyi
 * @date 2024-04-26
 */
public interface ShopWarehouseDistanceMapper
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
     * 删除销储距离管理
     *
     * @param id 销储距离管理主键
     * @return 结果
     */
    public int deleteShopWarehouseDistanceById(Long id);

    /**
     * 批量删除销储距离管理
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteShopWarehouseDistanceByIds(Long[] ids);

    public List<opins> ck();

    public List<opins> sd();
}
