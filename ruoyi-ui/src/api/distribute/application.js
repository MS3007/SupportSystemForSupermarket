import request from '@/utils/request'

// 查询物资申请列表
export function listApplication(query) {
  return request({
    url: '/distribute/application/list',
    method: 'get',
    params: query
  })
}
// 查询商品选项列表
export function listGoodsLT() {
  return request({
    url: '/distribute/application/goodList',
    method: 'get',
  })
}
// 查询物资申请详细
export function getApplication(id) {
  return request({
    url: '/distribute/application/' + id,
    method: 'get'
  })
}

// 新增物资申请
export function addApplication(data) {
  return request({
    url: '/distribute/application',
    method: 'post',
    data: data
  })
}

// 修改物资申请
export function updateApplication(data) {
  return request({
    url: '/distribute/application',
    method: 'put',
    data: data
  })
}

// 删除物资申请
export function delApplication(id) {
  return request({
    url: '/distribute/application/' + id,
    method: 'delete'
  })
}
