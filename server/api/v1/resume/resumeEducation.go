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

type ResumeEducationApi struct {}



// CreateResumeEducation 创建教育背景管理
// @Tags ResumeEducation
// @Summary 创建教育背景管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body resume.ResumeEducation true "创建教育背景管理"
// @Success 200 {object} response.Response{msg=string} "创建成功"
// @Router /教育背景/createResumeEducation [post]
func (教育背景Api *ResumeEducationApi) CreateResumeEducation(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	var 教育背景 resume.ResumeEducation
	err := c.ShouldBindJSON(&教育背景)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
    教育背景.CreatedBy = utils.GetUserID(c)
	err = 教育背景Service.CreateResumeEducation(ctx,&教育背景)
	if err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败:" + err.Error(), c)
		return
	}
    response.OkWithMessage("创建成功", c)
}

// DeleteResumeEducation 删除教育背景管理
// @Tags ResumeEducation
// @Summary 删除教育背景管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body resume.ResumeEducation true "删除教育背景管理"
// @Success 200 {object} response.Response{msg=string} "删除成功"
// @Router /教育背景/deleteResumeEducation [delete]
func (教育背景Api *ResumeEducationApi) DeleteResumeEducation(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	ID := c.Query("ID")
    userID := utils.GetUserID(c)
	err := 教育背景Service.DeleteResumeEducation(ctx,ID,userID)
	if err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败:" + err.Error(), c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

// DeleteResumeEducationByIds 批量删除教育背景管理
// @Tags ResumeEducation
// @Summary 批量删除教育背景管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{msg=string} "批量删除成功"
// @Router /教育背景/deleteResumeEducationByIds [delete]
func (教育背景Api *ResumeEducationApi) DeleteResumeEducationByIds(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	IDs := c.QueryArray("IDs[]")
    userID := utils.GetUserID(c)
	err := 教育背景Service.DeleteResumeEducationByIds(ctx,IDs,userID)
	if err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败:" + err.Error(), c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

// UpdateResumeEducation 更新教育背景管理
// @Tags ResumeEducation
// @Summary 更新教育背景管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body resume.ResumeEducation true "更新教育背景管理"
// @Success 200 {object} response.Response{msg=string} "更新成功"
// @Router /教育背景/updateResumeEducation [put]
func (教育背景Api *ResumeEducationApi) UpdateResumeEducation(c *gin.Context) {
    // 从ctx获取标准context进行业务行为
    ctx := c.Request.Context()

	var 教育背景 resume.ResumeEducation
	err := c.ShouldBindJSON(&教育背景)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
    教育背景.UpdatedBy = utils.GetUserID(c)
	err = 教育背景Service.UpdateResumeEducation(ctx,教育背景)
	if err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败:" + err.Error(), c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

// FindResumeEducation 用id查询教育背景管理
// @Tags ResumeEducation
// @Summary 用id查询教育背景管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param ID query uint true "用id查询教育背景管理"
// @Success 200 {object} response.Response{data=resume.ResumeEducation,msg=string} "查询成功"
// @Router /教育背景/findResumeEducation [get]
func (教育背景Api *ResumeEducationApi) FindResumeEducation(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	ID := c.Query("ID")
	re教育背景, err := 教育背景Service.GetResumeEducation(ctx,ID)
	if err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败:" + err.Error(), c)
		return
	}
	response.OkWithData(re教育背景, c)
}
// GetResumeEducationList 分页获取教育背景管理列表
// @Tags ResumeEducation
// @Summary 分页获取教育背景管理列表
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data query resumeReq.ResumeEducationSearch true "分页获取教育背景管理列表"
// @Success 200 {object} response.Response{data=response.PageResult,msg=string} "获取成功"
// @Router /教育背景/getResumeEducationList [get]
func (教育背景Api *ResumeEducationApi) GetResumeEducationList(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	var pageInfo resumeReq.ResumeEducationSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := 教育背景Service.GetResumeEducationInfoList(ctx,pageInfo)
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
// GetResumeEducationDataSource 获取ResumeEducation的数据源
// @Tags ResumeEducation
// @Summary 获取ResumeEducation的数据源
// @Accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{data=object,msg=string} "查询成功"
// @Router /教育背景/getResumeEducationDataSource [get]
func (教育背景Api *ResumeEducationApi) GetResumeEducationDataSource(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

    // 此接口为获取数据源定义的数据
    dataSource, err := 教育背景Service.GetResumeEducationDataSource(ctx)
    if err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
   		response.FailWithMessage("查询失败:" + err.Error(), c)
   		return
    }
   response.OkWithData(dataSource, c)
}

// GetResumeEducationPublic 不需要鉴权的教育背景管理接口
// @Tags ResumeEducation
// @Summary 不需要鉴权的教育背景管理接口
// @Accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /教育背景/getResumeEducationPublic [get]
func (教育背景Api *ResumeEducationApi) GetResumeEducationPublic(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

    // 此接口不需要鉴权
    // 示例为返回了一个固定的消息接口，一般本接口用于C端服务，需要自己实现业务逻辑
    教育背景Service.GetResumeEducationPublic(ctx)
    response.OkWithDetailed(gin.H{
       "info": "不需要鉴权的教育背景管理接口信息",
    }, "获取成功", c)
}
