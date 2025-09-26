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

type ResumeBasicInfoApi struct {}



// CreateResumeBasicInfo 创建个人基本信息管理
// @Tags ResumeBasicInfo
// @Summary 创建个人基本信息管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body resume.ResumeBasicInfo true "创建个人基本信息管理"
// @Success 200 {object} response.Response{msg=string} "创建成功"
// @Router /基本信息/createResumeBasicInfo [post]
func (基本信息Api *ResumeBasicInfoApi) CreateResumeBasicInfo(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	var 基本信息 resume.ResumeBasicInfo
	err := c.ShouldBindJSON(&基本信息)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
    基本信息.CreatedBy = utils.GetUserID(c)
	err = 基本信息Service.CreateResumeBasicInfo(ctx,&基本信息)
	if err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败:" + err.Error(), c)
		return
	}
    response.OkWithMessage("创建成功", c)
}

// DeleteResumeBasicInfo 删除个人基本信息管理
// @Tags ResumeBasicInfo
// @Summary 删除个人基本信息管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body resume.ResumeBasicInfo true "删除个人基本信息管理"
// @Success 200 {object} response.Response{msg=string} "删除成功"
// @Router /基本信息/deleteResumeBasicInfo [delete]
func (基本信息Api *ResumeBasicInfoApi) DeleteResumeBasicInfo(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	ID := c.Query("ID")
    userID := utils.GetUserID(c)
	err := 基本信息Service.DeleteResumeBasicInfo(ctx,ID,userID)
	if err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败:" + err.Error(), c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

// DeleteResumeBasicInfoByIds 批量删除个人基本信息管理
// @Tags ResumeBasicInfo
// @Summary 批量删除个人基本信息管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{msg=string} "批量删除成功"
// @Router /基本信息/deleteResumeBasicInfoByIds [delete]
func (基本信息Api *ResumeBasicInfoApi) DeleteResumeBasicInfoByIds(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	IDs := c.QueryArray("IDs[]")
    userID := utils.GetUserID(c)
	err := 基本信息Service.DeleteResumeBasicInfoByIds(ctx,IDs,userID)
	if err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败:" + err.Error(), c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

// UpdateResumeBasicInfo 更新个人基本信息管理
// @Tags ResumeBasicInfo
// @Summary 更新个人基本信息管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data body resume.ResumeBasicInfo true "更新个人基本信息管理"
// @Success 200 {object} response.Response{msg=string} "更新成功"
// @Router /基本信息/updateResumeBasicInfo [put]
func (基本信息Api *ResumeBasicInfoApi) UpdateResumeBasicInfo(c *gin.Context) {
    // 从ctx获取标准context进行业务行为
    ctx := c.Request.Context()

	var 基本信息 resume.ResumeBasicInfo
	err := c.ShouldBindJSON(&基本信息)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
    基本信息.UpdatedBy = utils.GetUserID(c)
	err = 基本信息Service.UpdateResumeBasicInfo(ctx,基本信息)
	if err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败:" + err.Error(), c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

// FindResumeBasicInfo 用id查询个人基本信息管理
// @Tags ResumeBasicInfo
// @Summary 用id查询个人基本信息管理
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param ID query uint true "用id查询个人基本信息管理"
// @Success 200 {object} response.Response{data=resume.ResumeBasicInfo,msg=string} "查询成功"
// @Router /基本信息/findResumeBasicInfo [get]
func (基本信息Api *ResumeBasicInfoApi) FindResumeBasicInfo(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	ID := c.Query("ID")
	re基本信息, err := 基本信息Service.GetResumeBasicInfo(ctx,ID)
	if err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败:" + err.Error(), c)
		return
	}
	response.OkWithData(re基本信息, c)
}
// GetResumeBasicInfoList 分页获取个人基本信息管理列表
// @Tags ResumeBasicInfo
// @Summary 分页获取个人基本信息管理列表
// @Security ApiKeyAuth
// @Accept application/json
// @Produce application/json
// @Param data query resumeReq.ResumeBasicInfoSearch true "分页获取个人基本信息管理列表"
// @Success 200 {object} response.Response{data=response.PageResult,msg=string} "获取成功"
// @Router /基本信息/getResumeBasicInfoList [get]
func (基本信息Api *ResumeBasicInfoApi) GetResumeBasicInfoList(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

	var pageInfo resumeReq.ResumeBasicInfoSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := 基本信息Service.GetResumeBasicInfoInfoList(ctx,pageInfo)
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

// GetResumeBasicInfoPublic 不需要鉴权的个人基本信息管理接口
// @Tags ResumeBasicInfo
// @Summary 不需要鉴权的个人基本信息管理接口
// @Accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /基本信息/getResumeBasicInfoPublic [get]
func (基本信息Api *ResumeBasicInfoApi) GetResumeBasicInfoPublic(c *gin.Context) {
    // 创建业务用Context
    ctx := c.Request.Context()

    // 此接口不需要鉴权
    // 示例为返回了一个固定的消息接口，一般本接口用于C端服务，需要自己实现业务逻辑
    基本信息Service.GetResumeBasicInfoPublic(ctx)
    response.OkWithDetailed(gin.H{
       "info": "不需要鉴权的个人基本信息管理接口信息",
    }, "获取成功", c)
}
