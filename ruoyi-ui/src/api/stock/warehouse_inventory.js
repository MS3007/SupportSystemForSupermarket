import request from '@/utils/request'

// 查询仓库库存管理列表
export function listWarehouse_inventory(query) {
  return request({
    url: '/stock/warehouse_inventory/list',
    method: 'get',
    params: query
  })
}

// 查询仓库库存管理详细
export function getWarehouse_inventory(id) {
  return request({
    url: '/stock/warehouse_inventory/' + id,
    method: 'get'
  })
}

// 新增仓库库存管理
export function addWarehouse_inventory(data) {
  return request({
    url: '/stock/warehouse_inventory',
    method: 'post',
    data: data
  })
}

// 修改仓库库存管理
export function updateWarehouse_inventory(data) {
  return request({
    url: '/stock/warehouse_inventory',
    method: 'put',
    data: data
  })
}

// 删除仓库库存管理
export function delWarehouse_inventory(id) {
  return request({
    url: '/stock/warehouse_inventory/' + id,
    method: 'delete'
  })
}
