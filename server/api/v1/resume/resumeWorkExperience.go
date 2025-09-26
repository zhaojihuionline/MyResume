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

type ResumeWorkExperienceApi struct {}



// CreateResumeWorkExperience 创建工作经历管理
// @Tags ResumeWorkExperience
// @Summary 创建工作经历管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body resume.ResumeWorkExperience true "创建工作经历管理"
// @Success 200 {object} response.Response{msg=string} "创建成功"
// @Router /工作经历/createResumeWorkExperience [post]
func (工作经历Api *ResumeWorkExperienceApi) CreateResumeWorkExperience(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	var 工作经历 resume.ResumeWorkExperience
	err := c.ShouldBindJSON(&工作经历)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
    工作经历.CreatedBy = utils.GetUserID(c)
	err = 工作经历Service.CreateResumeWorkExperience(ctx,&工作经历)
	if err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败:" + err.Error(), c)
		return
	}
    response.OkWithMessage("创建成功", c)
}

// DeleteResumeWorkExperience 删除工作经历管理
// @Tags ResumeWorkExperience
// @Summary 删除工作经历管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body resume.ResumeWorkExperience true "删除工作经历管理"
// @Success 200 {object} response.Response{msg=string} "删除成功"
// @Router /工作经历/deleteResumeWorkExperience [delete]
func (工作经历Api *ResumeWorkExperienceApi) DeleteResumeWorkExperience(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	ID := c.Query("ID")
    userID := utils.GetUserID(c)
	err := 工作经历Service.DeleteResumeWorkExperience(ctx,ID,userID)
	if err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败:" + err.Error(), c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

// DeleteResumeWorkExperienceByIds 批量删除工作经历管理
// @Tags ResumeWorkExperience
// @Summary 批量删除工作经历管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{msg=string} "批量删除成功"
// @Router /工作经历/deleteResumeWorkExperienceByIds [delete]
func (工作经历Api *ResumeWorkExperienceApi) DeleteResumeWorkExperienceByIds(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	IDs := c.QueryArray("IDs[]")
    userID := utils.GetUserID(c)
	err := 工作经历Service.DeleteResumeWorkExperienceByIds(ctx,IDs,userID)
	if err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败:" + err.Error(), c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

// UpdateResumeWorkExperience 更新工作经历管理
// @Tags ResumeWorkExperience
// @Summary 更新工作经历管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body resume.ResumeWorkExperience true "更新工作经历管理"
// @Success 200 {object} response.Response{msg=string} "更新成功"
// @Router /工作经历/updateResumeWorkExperience [put]
func (工作经历Api *ResumeWorkExperienceApi) UpdateResumeWorkExperience(c *gin.Context) {
    // 从ctx获取标准context进行业务行为
    ctx := c.Request.Context()

	var 工作经历 resume.ResumeWorkExperience
	err := c.ShouldBindJSON(&工作经历)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
    工作经历.UpdatedBy = utils.GetUserID(c)
	err = 工作经历Service.UpdateResumeWorkExperience(ctx,工作经历)
	if err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败:" + err.Error(), c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

// FindResumeWorkExperience 用id查询工作经历管理
// @Tags ResumeWorkExperience
// @Summary 用id查询工作经历管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param ID query uint true "用id查询工作经历管理"
// @Success 200 {object} response.Response{data=resume.ResumeWorkExperience,msg=string} "查询成功"
// @Router /工作经历/findResumeWorkExperience [get]
func (工作经历Api *ResumeWorkExperienceApi) FindResumeWorkExperience(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	ID := c.Query("ID")
	re工作经历, err := 工作经历Service.GetResumeWorkExperience(ctx,ID)
	if err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败:" + err.Error(), c)
		return
	}
	response.OkWithData(re工作经历, c)
}
// GetResumeWorkExperienceList 分页获取工作经历管理列表
// @Tags ResumeWorkExperience
// @Summary 分页获取工作经历管理列表
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data query resumeReq.ResumeWorkExperienceSearch true "分页获取工作经历管理列表"
// @Success 200 {object} response.Response{data=response.PageResult,msg=string} "获取成功"
// @Router /工作经历/getResumeWorkExperienceList [get]
func (工作经历Api *ResumeWorkExperienceApi) GetResumeWorkExperienceList(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	var pageInfo resumeReq.ResumeWorkExperienceSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := 工作经历Service.GetResumeWorkExperienceInfoList(ctx,pageInfo)
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
// GetResumeWorkExperienceDataSource 获取ResumeWorkExperience的数据源
// @Tags ResumeWorkExperience
// @Summary 获取ResumeWorkExperience的数据源
// @Accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{data=object,msg=string} "查询成功"
// @Router /工作经历/getResumeWorkExperienceDataSource [get]
func (工作经历Api *ResumeWorkExperienceApi) GetResumeWorkExperienceDataSource(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

    // 此接口为获取数据源定义的数据
    dataSource, err := 工作经历Service.GetResumeWorkExperienceDataSource(ctx)
    if err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
   		response.FailWithMessage("查询失败:" + err.Error(), c)
   		return
    }
   response.OkWithData(dataSource, c)
}

// GetResumeWorkExperiencePublic 不需要鉴权的工作经历管理接口
// @Tags ResumeWorkExperience
// @Summary 不需要鉴权的工作经历管理接口
// @Accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /工作经历/getResumeWorkExperiencePublic [get]
func (工作经历Api *ResumeWorkExperienceApi) GetResumeWorkExperiencePublic(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

    // 此接口不需要鉴权
    // 示例为返回了一个固定的消息接口，一般本接口用于C端服务，需要自己实现业务逻辑
    工作经历Service.GetResumeWorkExperiencePublic(ctx)
    response.OkWithDetailed(gin.H{
       "info": "不需要鉴权的工作经历管理接口信息",
    }, "获取成功", c)
}
