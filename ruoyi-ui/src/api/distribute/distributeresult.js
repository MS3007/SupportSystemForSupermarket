import request from '@/utils/request'

// 查询分配调拨列表
export function listDistributeresult(query) {
  return request({
    url: '/distribute/distributeresult/list',
    method: 'get',
    params: query
  })
}

// 查询分配调拨详细
export function getDistributeresult(id) {
  return request({
    url: '/distribute/distributeresult/' + id,
    method: 'get'
  })
}

// 新增分配调拨
export function addDistributeresult(data) {
  return request({
    url: '/distribute/distributeresult',
    method: 'post',
    data: data
  })
}

// 修改分配调拨
export function updateDistributeresult(data) {
  return request({
    url: '/distribute/distributeresult',
    method: 'put',
    data: data
  })
}

// 删除分配调拨
export function delDistributeresult(id) {
  return request({
    url: '/distribute/distributeresult/' + id,
    method: 'delete'
  })
}

//获取物资申请汇总
export function getApSummary() {
  return request({
    url: '/distribute/distributeresult/summary',
    method: 'get'
  });
}

//获取库存汇总
export function getInvSummary() {
  return request({
    url: '/distribute/distributeresult/invsummary',
    method: 'get'
  });
}

//获取物资分配结果
export function calAllocation() {
  return request({
    url: '/distribute/distributeresult/calallocation',
    method: 'get'
  });
}

export function subCgCalAllocation(data) {
  return request({
    url: '/distribute/distributeresult/subCgCalAllocation',
    method: 'post',
    data: data
  })
}
export function subCgDistributeRes(data) {
  return request({
    url: '/distribute/distributeresult/subCgDistributeRes',
    method: 'post',
    data: data
  })
}


