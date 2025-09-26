import service from '@/utils/request'
// @Tags ResumeWorkExperience
// @Summary 创建工作经历管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body model.ResumeWorkExperience true "创建工作经历管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"创建成功"}"
// @Router /工作经历/createResumeWorkExperience [post]
export const createResumeWorkExperience = (data) => {
  return service({
    url: '/工作经历/createResumeWorkExperience',
    method: 'post',
    data
  })
}

// @Tags ResumeWorkExperience
// @Summary 删除工作经历管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body model.ResumeWorkExperience true "删除工作经历管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /工作经历/deleteResumeWorkExperience [delete]
export const deleteResumeWorkExperience = (params) => {
  return service({
    url: '/工作经历/deleteResumeWorkExperience',
    method: 'delete',
    params
  })
}

// @Tags ResumeWorkExperience
// @Summary 批量删除工作经历管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除工作经历管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /工作经历/deleteResumeWorkExperience [delete]
export const deleteResumeWorkExperienceByIds = (params) => {
  return service({
    url: '/工作经历/deleteResumeWorkExperienceByIds',
    method: 'delete',
    params
  })
}

// @Tags ResumeWorkExperience
// @Summary 更新工作经历管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body model.ResumeWorkExperience true "更新工作经历管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /工作经历/updateResumeWorkExperience [put]
export const updateResumeWorkExperience = (data) => {
  return service({
    url: '/工作经历/updateResumeWorkExperience',
    method: 'put',
    data
  })
}

// @Tags ResumeWorkExperience
// @Summary 用id查询工作经历管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data query model.ResumeWorkExperience true "用id查询工作经历管理"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /工作经历/findResumeWorkExperience [get]
export const findResumeWorkExperience = (params) => {
  return service({
    url: '/工作经历/findResumeWorkExperience',
    method: 'get',
    params
  })
}

// @Tags ResumeWorkExperience
// @Summary 分页获取工作经历管理列表
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取工作经历管理列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /工作经历/getResumeWorkExperienceList [get]
export const getResumeWorkExperienceList = (params) => {
  return service({
    url: '/工作经历/getResumeWorkExperienceList',
    method: 'get',
    params
  })
}
// @Tags ResumeWorkExperience
// @Summary 获取数据源
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /工作经历/findResumeWorkExperienceDataSource [get]
export const getResumeWorkExperienceDataSource = () => {
  return service({
    url: '/工作经历/getResumeWorkExperienceDataSource',
    method: 'get',
  })
}

// @Tags ResumeWorkExperience
// @Summary 不需要鉴权的工作经历管理接口
// @Accept application/json
// @Produce application/json
// @Param data query resumeReq.ResumeWorkExperienceSearch true "分页获取工作经历管理列表"
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /工作经历/getResumeWorkExperiencePublic [get]
export const getResumeWorkExperiencePublic = () => {
  return service({
    url: '/工作经历/getResumeWorkExperiencePublic',
    method: 'get',
  })
}
