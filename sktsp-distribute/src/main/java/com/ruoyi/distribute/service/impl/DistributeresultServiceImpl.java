package com.ruoyi.distribute.service.impl;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.*;

import com.ruoyi.distribute.mapper.ApplicationMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.distribute.mapper.DistributeresultMapper;
import com.ruoyi.distribute.domain.Distributeresult;
import com.ruoyi.distribute.service.IDistributeresultService;
import com.ruoyi.distribute.service.algorithm.distributeAlg;

/**
 * 分配调拨Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
@Service
public class DistributeresultServiceImpl implements IDistributeresultService 
{
    @Autowired
    private DistributeresultMapper distributeresultMapper;
    @Autowired
    private ApplicationMapper applicationMapper;

    /**
     * 查询分配调拨
     * 
     * @param id 分配调拨主键
     * @return 分配调拨
     */
    @Override
    public Distributeresult selectDistributeresultById(Long id)
    {
        return distributeresultMapper.selectDistributeresultById(id);
    }

    /**
     * 查询分配调拨列表
     * 
     * @param distributeresult 分配调拨
     * @return 分配调拨
     */
    @Override
    public List<Distributeresult> selectDistributeresultList(Distributeresult distributeresult)
    {
        return distributeresultMapper.selectDistributeresultList(distributeresult);
    }

    /**
     * 新增分配调拨
     * 
     * @param distributeresult 分配调拨
     * @return 结果
     */
    @Override
    public int insertDistributeresult(Distributeresult distributeresult)
    {
        return distributeresultMapper.insertDistributeresult(distributeresult);
    }

    /**
     * 修改分配调拨
     * 
     * @param distributeresult 分配调拨
     * @return 结果
     */
    @Override
    public int updateDistributeresult(Distributeresult distributeresult)
    {
        return distributeresultMapper.updateDistributeresult(distributeresult);
    }

    /**
     * 批量删除分配调拨
     * 
     * @param ids 需要删除的分配调拨主键
     * @return 结果
     */
    @Override
    public int deleteDistributeresultByIds(Long[] ids)
    {
        return distributeresultMapper.deleteDistributeresultByIds(ids);
    }

    /**
     * 删除分配调拨信息
     * 
     * @param id 分配调拨主键
     * @return 结果
     */
    @Override
    public int deleteDistributeresultById(Long id)
    {
        return distributeresultMapper.deleteDistributeresultById(id);
    }

    /**
     * 物资申请汇总
     *
     * @return 获取物资申请汇总
     */
    @Override
    public List<Map<String, Object>> getApSummary() {
        return distributeresultMapper.getApSummary();
    }

    /**
     * 库存汇总
     *
     * @return 库存汇总list
     */
    @Override
    public List<Map<String, Object>> getInvSummary() {
        return distributeresultMapper.getInvSummary();
    }

    @Override
    public List<Map<String, Object>> calculateAllocation() {

        // 查询总可供量和总申请量
        List<Map<String, Object>>  totalSupply = distributeresultMapper.getInvIDSummary();//总可供量
        List<Map<String, Object>> totalDemand = distributeresultMapper.getIDSummary();//总申请量
        List<Map<String, Object>> summary = distributeresultMapper.getApSummary();  //物资申请汇总

        Map<Integer, BigDecimal> totalSupplyList = new HashMap<>();//总可供量map映射
        Map<Integer, BigDecimal> totalDemandList = new HashMap<>();//物资申请汇总map映射
        Map<Integer, Boolean> SupplyFlag = new HashMap<>();//供应标记
        for (Map<String, Object> map : totalSupply) {
            totalSupplyList.put((Integer) map.get("good_id"), (BigDecimal) map.get("total_count")); // 使用put方法添加键值对
        }
        for (Map<String, Object> map : totalDemand) {
            Integer good_id = (Integer) map.get("good_id");
            BigDecimal total_count = (BigDecimal) map.get("total_count");
            totalDemandList.put((Integer) map.get("good_id"), (BigDecimal) map.get("total_count")); // 使用put方法添加键值对
            if(totalSupplyList.containsKey(good_id)) {
                BigDecimal supply = totalSupplyList.get(good_id);
                if(supply.compareTo(total_count) >= 0) {
                    // 总可供量大于等于总申请量，完全满足各超市的申请数量
                    // 这里可以直接返回各超市的申请数量
                    SupplyFlag.put(good_id, true);
//                    System.out.println(good_id+"申请了："+total_count+" 库存"+supply+"完全满足");
                } else {
                    // 总可供量小于总申请量，按申请比例消减
                    SupplyFlag.put(good_id, false);
//                    System.out.println(good_id+"申请了："+total_count+" 库存"+supply+"按比例消减");
                }
            }else{
                SupplyFlag.put(good_id, false);
//                System.out.println(good_id+"无库存");
            }
        }
//        System.out.println(SupplyFlag);
        for (Map<String, Object> map : summary) {
            Integer good_id = (Integer) map.get("good_id");
            BigDecimal total_count = (BigDecimal) map.get("total_count");

            if(!SupplyFlag.get(good_id)){
                BigDecimal supply = totalSupplyList.get(good_id);
                BigDecimal Demand = totalDemandList.get(good_id);
                BigDecimal ratio = supply.divide(Demand, 8, BigDecimal.ROUND_HALF_UP);
                BigDecimal roundedResult = total_count.multiply(ratio).setScale(0, RoundingMode.HALF_UP);
                map.put("change_count", roundedResult);
//                System.out.println(good_id+" 库存"+supply+"按比例消减 "+"比例："+ratio+" 申请了："+total_count+" 消减后："+roundedResult);
            }else{
                map.put("change_count", total_count);
            }
        }
        return summary;
    }

    @Override
    public List<Map<String, Object>> distribute(List<Map<String, Object>> subCgCalAllocation){
            Set<Integer>ngood_id = new LinkedHashSet<>();
            List<Map<String, Object>> distributResult = new ArrayList<>();
            List<Map<String, Object>> distances = distributeresultMapper.getAllDistances();
            for(Map<String, Object> item : subCgCalAllocation){
               ngood_id.add((Integer) item.get("good_id"));
            }
            for(Integer good_id : ngood_id){
                List<Map<String, Object>> singleGoodInv = distributeresultMapper.getSingleGoodInv(good_id);
                List<Map<String, Object>> singleGoodShop = new ArrayList<>();
                List<Integer> supplyList = new ArrayList<>();
                for(Map<String, Object> item : singleGoodInv){
                    supplyList.add((Integer) item.get("sum"));
                }
                //产地供应量
                int[] supply = supplyList.stream().mapToInt(i->i).toArray();
                List<Integer> demandList = new ArrayList<>();
                for(Map<String, Object> item : subCgCalAllocation){
                    if((Integer) item.get("good_id") == good_id){
                        Map<String, Object> tpMap = new HashMap<>();
                        tpMap.put("shop_id", item.get("shop_id"));
                        tpMap.put("shop_name", item.get("shop_name"));
                        tpMap.put("name", item.get("name"));
                        tpMap.put("sum", item.get("change_count"));
                        singleGoodShop.add(tpMap);
                        demandList.add((Integer) item.get("change_count"));
                    }
                }
                //需地需求量
                int[] demand = demandList.stream().mapToInt(i->i).toArray();
                int maxShopId = singleGoodShop.size();
                int maxWarehouseId = singleGoodInv.size();
                double[][] distanceMatrix = new double[maxWarehouseId][maxShopId];
//                System.out.println(singleGoodInv);
//                System.out.println(maxWarehouseId);
//                System.out.println(singleGoodShop);
//                System.out.println(maxShopId);
                int ti=0,tj=0;
                for(Map<String, Object> item2 : singleGoodInv){
                    Long warehouse_id_long = (Long) item2.get("warehouse_id");
                    Integer warehouse_id = warehouse_id_long.intValue();
                    tj=0;
                    for(Map<String, Object> item : singleGoodShop){
                        Integer shop_id = (Integer) item.get("shop_id");
                        for(Map<String, Object> item3 : distances){
                            Long comwarehouse_id_long = (Long) item3.get("warehouse_id");
                            Integer comwarehouse_id = comwarehouse_id_long.intValue();
                            Long comshop_id_long = (Long) item3.get("shop_id");
                            Integer comshop_id = comshop_id_long.intValue();
                            if(comwarehouse_id.equals(warehouse_id) && comshop_id.equals(shop_id)){
                                distanceMatrix[ti][tj] = (Double) item3.get("distance");
                            }
                        }
                        tj++;
                    }
                    ti++;
                }
                double[][] result= distributeAlg.Transportation_problem_solving(maxWarehouseId,maxShopId,distanceMatrix ,supply , demand);
                for (int i = 0; i < maxWarehouseId; i++) {
                    for (int j = 0; j < maxShopId; j++) {
                        if (result[i][j] > 0) { // 如果调拨数量大于0
                            Map<String, Object> allocation = new HashMap<>();
                            allocation.put("good_id", good_id);
                            allocation.put("name", singleGoodShop.get(j).get("name"));
                            allocation.put("warehouse_id", singleGoodInv.get(i).get("warehouse_id"));
                            allocation.put("warehouse_name", singleGoodInv.get(i).get("warehouse_name")); // 假设你在singleGoodInv中存储了仓库名称
                            allocation.put("sum", singleGoodInv.get(i).get("sum"));
                            allocation.put("shop_id", singleGoodShop.get(j).get("shop_id"));
                            allocation.put("shop_name", singleGoodShop.get(j).get("shop_name")); // 假设你在singleGoodShop中存储了超市名称
                            allocation.put("allocation_count", result[i][j]);
                            distributResult.add(allocation);
                            System.out.println(allocation);
                        }
                    }
                }
            }
//            System.out.println(distributResult);
            return distributResult;
    }

    /**
     * 保存调拨结果
     *
     * @param subCgDistributeRes 分配调拨
     */
    @Override
    public void saveDistributeresult(List<Map<String, Object>> subCgDistributeRes)
    {
        System.out.println(subCgDistributeRes);
        applicationMapper.updateAllIsProcessedToOne();
        for (Map<String, Object> map : subCgDistributeRes) {

            Distributeresult distributeresult = new Distributeresult();
            Integer tmp = (Integer) map.get("good_id");
            distributeresult.setGoodId(tmp.longValue());
            tmp = (Integer) map.get("warehouse_id");
            distributeresult.setWarehouseId(tmp.longValue());
            tmp= (Integer) map.get("shop_id");
            distributeresult.setShopId(tmp.longValue());
            tmp= (Integer) map.get("allocation_count");
            distributeresult.setCount(tmp.longValue());
            distributeresult.setTime(new Date());
            System.out.println(distributeresult);
            distributeresultMapper.insertDistributeresult(distributeresult);
        }
    }

}


