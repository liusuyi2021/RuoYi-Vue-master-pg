import request from '@/utils/request'

// 查询教师列表
export function listTeacher(query) {
  return request({
    url: '/school/teacher/list',
    method: 'get',
    params: query
  })
}

// 查询教师详细
export function getTeacher(id) {
  return request({
    url: '/school/teacher/' + id,
    method: 'get'
  })
}

// 新增教师
export function addTeacher(data) {
  return request({
    url: '/school/teacher',
    method: 'post',
    data: data
  })
}

// 修改教师
export function updateTeacher(data) {
  return request({
    url: '/school/teacher',
    method: 'put',
    data: data
  })
}

// 删除教师
export function delTeacher(id) {
  return request({
    url: '/school/teacher/' + id,
    method: 'delete'
  })
}
