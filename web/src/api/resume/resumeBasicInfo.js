import service from '@/utils/request'
// @Tags ResumeBasicInfo
// @Summary 创建个人基本信息管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body model.ResumeBasicInfo true "创建个人基本信息管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"创建成功"}"
// @Router /基本信息/createResumeBasicInfo [post]
export const createResumeBasicInfo = (data) => {
  return service({
    url: '/基本信息/createResumeBasicInfo',
    method: 'post',
    data
  })
}

// @Tags ResumeBasicInfo
// @Summary 删除个人基本信息管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body model.ResumeBasicInfo true "删除个人基本信息管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /基本信息/deleteResumeBasicInfo [delete]
export const deleteResumeBasicInfo = (params) => {
  return service({
    url: '/基本信息/deleteResumeBasicInfo',
    method: 'delete',
    params
  })
}

// @Tags ResumeBasicInfo
// @Summary 批量删除个人基本信息管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除个人基本信息管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /基本信息/deleteResumeBasicInfo [delete]
export const deleteResumeBasicInfoByIds = (params) => {
  return service({
    url: '/基本信息/deleteResumeBasicInfoByIds',
    method: 'delete',
    params
  })
}

// @Tags ResumeBasicInfo
// @Summary 更新个人基本信息管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body model.ResumeBasicInfo true "更新个人基本信息管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /基本信息/updateResumeBasicInfo [put]
export const updateResumeBasicInfo = (data) => {
  return service({
    url: '/基本信息/updateResumeBasicInfo',
    method: 'put',
    data
  })
}

// @Tags ResumeBasicInfo
// @Summary 用id查询个人基本信息管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data query model.ResumeBasicInfo true "用id查询个人基本信息管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /基本信息/findResumeBasicInfo [get]
export const findResumeBasicInfo = (params) => {
  return service({
    url: '/基本信息/findResumeBasicInfo',
    method: 'get',
    params
  })
}

// @Tags ResumeBasicInfo
// @Summary 分页获取个人基本信息管理列表
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取个人基本信息管理列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /基本信息/getResumeBasicInfoList [get]
export const getResumeBasicInfoList = (params) => {
  return service({
    url: '/基本信息/getResumeBasicInfoList',
    method: 'get',
    params
  })
}

// @Tags ResumeBasicInfo
// @Summary 不需要鉴权的个人基本信息管理接口
// @Accept application/json
// @Produce application/json
// @Param data query resumeReq.ResumeBasicInfoSearch true "分页获取个人基本信息管理列表"
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /基本信息/getResumeBasicInfoPublic [get]
export const getResumeBasicInfoPublic = () => {
  return service({
    url: '/基本信息/getResumeBasicInfoPublic',
    method: 'get',
  })
}
