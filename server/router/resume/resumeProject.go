package resume

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type ResumeProjectRouter struct {}

// InitResumeProjectRouter 初始化 项目经验管理 路由信息
func (s *ResumeProjectRouter) InitResumeProjectRouter(Router *gin.RouterGroup,PublicRouter *gin.RouterGroup) {
	项目经验Router := Router.Group("项目经验").Use(middleware.OperationRecord())
	项目经验RouterWithoutRecord := Router.Group("项目经验")
	项目经验RouterWithoutAuth := PublicRouter.Group("项目经验")
	{
		项目经验Router.POST("createResumeProject", 项目经验Api.CreateResumeProject)   // 新建项目经验管理
		项目经验Router.DELETE("deleteResumeProject", 项目经验Api.DeleteResumeProject) // 删除项目经验管理
		项目经验Router.DELETE("deleteResumeProjectByIds", 项目经验Api.DeleteResumeProjectByIds) // 批量删除项目经验管理
		项目经验Router.PUT("updateResumeProject", 项目经验Api.UpdateResumeProject)    // 更新项目经验管理
	}
	{
		项目经验RouterWithoutRecord.GET("findResumeProject", 项目经验Api.FindResumeProject)        // 根据ID获取项目经验管理
		项目经验RouterWithoutRecord.GET("getResumeProjectList", 项目经验Api.GetResumeProjectList)  // 获取项目经验管理列表
	}
	{
	    项目经验RouterWithoutAuth.GET("getResumeProjectDataSource", 项目经验Api.GetResumeProjectDataSource)  // 获取项目经验管理数据源
	    项目经验RouterWithoutAuth.GET("getResumeProjectPublic", 项目经验Api.GetResumeProjectPublic)  // 项目经验管理开放接口
	}
}
