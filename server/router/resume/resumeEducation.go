package resume

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type ResumeEducationRouter struct {}

// InitResumeEducationRouter 初始化 教育背景管理 路由信息
func (s *ResumeEducationRouter) InitResumeEducationRouter(Router *gin.RouterGroup,PublicRouter *gin.RouterGroup) {
	教育背景Router := Router.Group("教育背景").Use(middleware.OperationRecord())
	教育背景RouterWithoutRecord := Router.Group("教育背景")
	教育背景RouterWithoutAuth := PublicRouter.Group("教育背景")
	{
		教育背景Router.POST("createResumeEducation", 教育背景Api.CreateResumeEducation)   // 新建教育背景管理
		教育背景Router.DELETE("deleteResumeEducation", 教育背景Api.DeleteResumeEducation) // 删除教育背景管理
		教育背景Router.DELETE("deleteResumeEducationByIds", 教育背景Api.DeleteResumeEducationByIds) // 批量删除教育背景管理
		教育背景Router.PUT("updateResumeEducation", 教育背景Api.UpdateResumeEducation)    // 更新教育背景管理
	}
	{
		教育背景RouterWithoutRecord.GET("findResumeEducation", 教育背景Api.FindResumeEducation)        // 根据ID获取教育背景管理
		教育背景RouterWithoutRecord.GET("getResumeEducationList", 教育背景Api.GetResumeEducationList)  // 获取教育背景管理列表
	}
	{
	    教育背景RouterWithoutAuth.GET("getResumeEducationDataSource", 教育背景Api.GetResumeEducationDataSource)  // 获取教育背景管理数据源
	    教育背景RouterWithoutAuth.GET("getResumeEducationPublic", 教育背景Api.GetResumeEducationPublic)  // 教育背景管理开放接口
	}
}
