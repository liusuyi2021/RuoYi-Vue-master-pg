import request from '@/utils/request'

// 查询相机设备列表
export function listCameras(query) {
  return request({
    url: '/school/cameras/list',
    method: 'get',
    params: query
  })
}

// 查询相机设备详细
export function getCameras(id) {
  return request({
    url: '/school/cameras/' + id,
    method: 'get'
  })
}

// 新增相机设备
export function addCameras(data) {
  return request({
    url: '/school/cameras',
    method: 'post',
    data: data
  })
}

// 修改相机设备
export function updateCameras(data) {
  return request({
    url: '/school/cameras',
    method: 'put',
    data: data
  })
}

// 删除相机设备
export function delCameras(id) {
  return request({
    url: '/school/cameras/' + id,
    method: 'delete'
  })
}
