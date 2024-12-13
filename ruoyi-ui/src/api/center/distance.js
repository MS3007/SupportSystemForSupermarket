import request from '@/utils/request'

// 查询销储距离管理列表
export function listDistance(query) {
  return request({
    url: '/center/distance/list',
    method: 'get',
    params: query
  })
}

// 查询销储距离管理详细
export function getDistance(id) {
  return request({
    url: '/center/distance/' + id,
    method: 'get'
  })
}

// 新增销储距离管理
export function addDistance(data) {
  return request({
    url: '/center/distance',
    method: 'post',
    data: data
  })
}

// 修改销储距离管理
export function updateDistance(data) {
  return request({
    url: '/center/distance',
    method: 'put',
    data: data
  })
}

// 删除销储距离管理
export function delDistance(id) {
  return request({
    url: '/center/distance/' + id,
    method: 'delete'
  })
}

// 查询销储距离管理列表
export function listck() {
  return request({
    url: '/center/distance/ck',
    method: 'get'
  })
}
// 查询销储距离管理列表
export function listsd() {
  return request({
    url: '/center/distance/sd',
    method: 'get'
  })
}
