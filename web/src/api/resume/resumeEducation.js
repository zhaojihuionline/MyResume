import service from '@/utils/request'
// @Tags ResumeEducation
// @Summary 创建教育背景管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body model.ResumeEducation true "创建教育背景管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"创建成功"}"
// @Router /教育背景/createResumeEducation [post]
export const createResumeEducation = (data) => {
  return service({
    url: '/教育背景/createResumeEducation',
    method: 'post',
    data
  })
}

// @Tags ResumeEducation
// @Summary 删除教育背景管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body model.ResumeEducation true "删除教育背景管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /教育背景/deleteResumeEducation [delete]
export const deleteResumeEducation = (params) => {
  return service({
    url: '/教育背景/deleteResumeEducation',
    method: 'delete',
    params
  })
}

// @Tags ResumeEducation
// @Summary 批量删除教育背景管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除教育背景管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /教育背景/deleteResumeEducation [delete]
export const deleteResumeEducationByIds = (params) => {
  return service({
    url: '/教育背景/deleteResumeEducationByIds',
    method: 'delete',
    params
  })
}

// @Tags ResumeEducation
// @Summary 更新教育背景管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body model.ResumeEducation true "更新教育背景管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /教育背景/updateResumeEducation [put]
export const updateResumeEducation = (data) => {
  return service({
    url: '/教育背景/updateResumeEducation',
    method: 'put',
    data
  })
}

// @Tags ResumeEducation
// @Summary 用id查询教育背景管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data query model.ResumeEducation true "用id查询教育背景管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /教育背景/findResumeEducation [get]
export const findResumeEducation = (params) => {
  return service({
    url: '/教育背景/findResumeEducation',
    method: 'get',
    params
  })
}

// @Tags ResumeEducation
// @Summary 分页获取教育背景管理列表
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取教育背景管理列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /教育背景/getResumeEducationList [get]
export const getResumeEducationList = (params) => {
  return service({
    url: '/教育背景/getResumeEducationList',
    method: 'get',
    params
  })
}
// @Tags ResumeEducation
// @Summary 获取数据源
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /教育背景/findResumeEducationDataSource [get]
export const getResumeEducationDataSource = () => {
  return service({
    url: '/教育背景/getResumeEducationDataSource',
    method: 'get',
  })
}

// @Tags ResumeEducation
// @Summary 不需要鉴权的教育背景管理接口
// @Accept application/json
// @Produce application/json
// @Param data query resumeReq.ResumeEducationSearch true "分页获取教育背景管理列表"
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /教育背景/getResumeEducationPublic [get]
export const getResumeEducationPublic = () => {
  return service({
    url: '/教育背景/getResumeEducationPublic',
    method: 'get',
  })
}
