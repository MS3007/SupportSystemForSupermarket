import request from '@/utils/request'

// 查询超市库存管理列表
export function listShop_stock(query) {
  return request({
    url: '/stock/shop_stock/list',
    method: 'get',
    params: query
  })
}

// 查询超市库存管理详细
export function getShop_stock(id) {
  return request({
    url: '/stock/shop_stock/' + id,
    method: 'get'
  })
}

// 新增超市库存管理
export function addShop_stock(data) {
  return request({
    url: '/stock/shop_stock',
    method: 'post',
    data: data
  })
}

// 修改超市库存管理
export function updateShop_stock(data) {
  return request({
    url: '/stock/shop_stock',
    method: 'put',
    data: data
  })
}

// 删除超市库存管理
export function delShop_stock(id) {
  return request({
    url: '/stock/shop_stock/' + id,
    method: 'delete'
  })
}
