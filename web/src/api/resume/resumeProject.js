import service from '@/utils/request'
// @Tags ResumeProject
// @Summary 创建项目经验管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body model.ResumeProject true "创建项目经验管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"创建成功"}"
// @Router /项目经验/createResumeProject [post]
export const createResumeProject = (data) => {
  return service({
    url: '/项目经验/createResumeProject',
    method: 'post',
    data
  })
}

// @Tags ResumeProject
// @Summary 删除项目经验管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body model.ResumeProject true "删除项目经验管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /项目经验/deleteResumeProject [delete]
export const deleteResumeProject = (params) => {
  return service({
    url: '/项目经验/deleteResumeProject',
    method: 'delete',
    params
  })
}

// @Tags ResumeProject
// @Summary 批量删除项目经验管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除项目经验管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /项目经验/deleteResumeProject [delete]
export const deleteResumeProjectByIds = (params) => {
  return service({
    url: '/项目经验/deleteResumeProjectByIds',
    method: 'delete',
    params
  })
}

// @Tags ResumeProject
// @Summary 更新项目经验管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body model.ResumeProject true "更新项目经验管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /项目经验/updateResumeProject [put]
export const updateResumeProject = (data) => {
  return service({
    url: '/项目经验/updateResumeProject',
    method: 'put',
    data
  })
}

// @Tags ResumeProject
// @Summary 用id查询项目经验管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data query model.ResumeProject true "用id查询项目经验管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /项目经验/findResumeProject [get]
export const findResumeProject = (params) => {
  return service({
    url: '/项目经验/findResumeProject',
    method: 'get',
    params
  })
}

// @Tags ResumeProject
// @Summary 分页获取项目经验管理列表
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取项目经验管理列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /项目经验/getResumeProjectList [get]
export const getResumeProjectList = (params) => {
  return service({
    url: '/项目经验/getResumeProjectList',
    method: 'get',
    params
  })
}
// @Tags ResumeProject
// @Summary 获取数据源
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /项目经验/findResumeProjectDataSource [get]
export const getResumeProjectDataSource = () => {
  return service({
    url: '/项目经验/getResumeProjectDataSource',
    method: 'get',
  })
}

// @Tags ResumeProject
// @Summary 不需要鉴权的项目经验管理接口
// @Accept application/json
// @Produce application/json
// @Param data query resumeReq.ResumeProjectSearch true "分页获取项目经验管理列表"
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /项目经验/getResumeProjectPublic [get]
export const getResumeProjectPublic = () => {
  return service({
    url: '/项目经验/getResumeProjectPublic',
    method: 'get',
  })
}
