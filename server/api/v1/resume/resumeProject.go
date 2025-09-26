package resume

import (
	
	"github.com/flipped-aurora/gin-vue-admin/server/global"
    "github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
    "github.com/flipped-aurora/gin-vue-admin/server/model/resume"
    resumeReq "github.com/flipped-aurora/gin-vue-admin/server/model/resume/request"
    "github.com/gin-gonic/gin"
    "go.uber.org/zap"
    "github.com/flipped-aurora/gin-vue-admin/server/utils"
)

type ResumeProjectApi struct {}



// CreateResumeProject 创建项目经验管理
// @Tags ResumeProject
// @Summary 创建项目经验管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body resume.ResumeProject true "创建项目经验管理"
// @Success 200 {object} response.Response{msg=string} "创建成功"
// @Router /项目经验/createResumeProject [post]
func (项目经验Api *ResumeProjectApi) CreateResumeProject(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	var 项目经验 resume.ResumeProject
	err := c.ShouldBindJSON(&项目经验)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
    项目经验.CreatedBy = utils.GetUserID(c)
	err = 项目经验Service.CreateResumeProject(ctx,&项目经验)
	if err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败:" + err.Error(), c)
		return
	}
    response.OkWithMessage("创建成功", c)
}

// DeleteResumeProject 删除项目经验管理
// @Tags ResumeProject
// @Summary 删除项目经验管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body resume.ResumeProject true "删除项目经验管理"
// @Success 200 {object} response.Response{msg=string} "删除成功"
// @Router /项目经验/deleteResumeProject [delete]
func (项目经验Api *ResumeProjectApi) DeleteResumeProject(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	ID := c.Query("ID")
    userID := utils.GetUserID(c)
	err := 项目经验Service.DeleteResumeProject(ctx,ID,userID)
	if err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败:" + err.Error(), c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

// DeleteResumeProjectByIds 批量删除项目经验管理
// @Tags ResumeProject
// @Summary 批量删除项目经验管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{msg=string} "批量删除成功"
// @Router /项目经验/deleteResumeProjectByIds [delete]
func (项目经验Api *ResumeProjectApi) DeleteResumeProjectByIds(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	IDs := c.QueryArray("IDs[]")
    userID := utils.GetUserID(c)
	err := 项目经验Service.DeleteResumeProjectByIds(ctx,IDs,userID)
	if err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败:" + err.Error(), c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

// UpdateResumeProject 更新项目经验管理
// @Tags ResumeProject
// @Summary 更新项目经验管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body resume.ResumeProject true "更新项目经验管理"
// @Success 200 {object} response.Response{msg=string} "更新成功"
// @Router /项目经验/updateResumeProject [put]
func (项目经验Api *ResumeProjectApi) UpdateResumeProject(c *gin.Context) {
    // 从ctx获取标准context进行业务行为
    ctx := c.Request.Context()

	var 项目经验 resume.ResumeProject
	err := c.ShouldBindJSON(&项目经验)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
    项目经验.UpdatedBy = utils.GetUserID(c)
	err = 项目经验Service.UpdateResumeProject(ctx,项目经验)
	if err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败:" + err.Error(), c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

// FindResumeProject 用id查询项目经验管理
// @Tags ResumeProject
// @Summary 用id查询项目经验管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param ID query uint true "用id查询项目经验管理"
// @Success 200 {object} response.Response{data=resume.ResumeProject,msg=string} "查询成功"
// @Router /项目经验/findResumeProject [get]
func (项目经验Api *ResumeProjectApi) FindResumeProject(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	ID := c.Query("ID")
	re项目经验, err := 项目经验Service.GetResumeProject(ctx,ID)
	if err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败:" + err.Error(), c)
		return
	}
	response.OkWithData(re项目经验, c)
}
// GetResumeProjectList 分页获取项目经验管理列表
// @Tags ResumeProject
// @Summary 分页获取项目经验管理列表
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data query resumeReq.ResumeProjectSearch true "分页获取项目经验管理列表"
// @Success 200 {object} response.Response{data=response.PageResult,msg=string} "获取成功"
// @Router /项目经验/getResumeProjectList [get]
func (项目经验Api *ResumeProjectApi) GetResumeProjectList(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	var pageInfo resumeReq.ResumeProjectSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := 项目经验Service.GetResumeProjectInfoList(ctx,pageInfo)
	if err != nil {
	    global.GVA_LOG.Error("获取失败!", zap.Error(err))
        response.FailWithMessage("获取失败:" + err.Error(), c)
        return
    }
    response.OkWithDetailed(response.PageResult{
        List:     list,
        Total:    total,
        Page:     pageInfo.Page,
        PageSize: pageInfo.PageSize,
    }, "获取成功", c)
}
// GetResumeProjectDataSource 获取ResumeProject的数据源
// @Tags ResumeProject
// @Summary 获取ResumeProject的数据源
// @Accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{data=object,msg=string} "查询成功"
// @Router /项目经验/getResumeProjectDataSource [get]
func (项目经验Api *ResumeProjectApi) GetResumeProjectDataSource(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

    // 此接口为获取数据源定义的数据
    dataSource, err := 项目经验Service.GetResumeProjectDataSource(ctx)
    if err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
   		response.FailWithMessage("查询失败:" + err.Error(), c)
   		return
    }
   response.OkWithData(dataSource, c)
}

// GetResumeProjectPublic 不需要鉴权的项目经验管理接口
// @Tags ResumeProject
// @Summary 不需要鉴权的项目经验管理接口
// @Accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /项目经验/getResumeProjectPublic [get]
func (项目经验Api *ResumeProjectApi) GetResumeProjectPublic(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

    // 此接口不需要鉴权
    // 示例为返回了一个固定的消息接口，一般本接口用于C端服务，需要自己实现业务逻辑
    项目经验Service.GetResumeProjectPublic(ctx)
    response.OkWithDetailed(gin.H{
       "info": "不需要鉴权的项目经验管理接口信息",
    }, "获取成功", c)
}
