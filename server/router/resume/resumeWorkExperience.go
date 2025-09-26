package resume

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type ResumeWorkExperienceRouter struct {}

// InitResumeWorkExperienceRouter 初始化 工作经历管理 路由信息
func (s *ResumeWorkExperienceRouter) InitResumeWorkExperienceRouter(Router *gin.RouterGroup,PublicRouter *gin.RouterGroup) {
	工作经历Router := Router.Group("工作经历").Use(middleware.OperationRecord())
	工作经历RouterWithoutRecord := Router.Group("工作经历")
	工作经历RouterWithoutAuth := PublicRouter.Group("工作经历")
	{
		工作经历Router.POST("createResumeWorkExperience", 工作经历Api.CreateResumeWorkExperience)   // 新建工作经历管理
		工作经历Router.DELETE("deleteResumeWorkExperience", 工作经历Api.DeleteResumeWorkExperience) // 删除工作经历管理
		工作经历Router.DELETE("deleteResumeWorkExperienceByIds", 工作经历Api.DeleteResumeWorkExperienceByIds) // 批量删除工作经历管理
		工作经历Router.PUT("updateResumeWorkExperience", 工作经历Api.UpdateResumeWorkExperience)    // 更新工作经历管理
	}
	{
		工作经历RouterWithoutRecord.GET("findResumeWorkExperience", 工作经历Api.FindResumeWorkExperience)        // 根据ID获取工作经历管理
		工作经历RouterWithoutRecord.GET("getResumeWorkExperienceList", 工作经历Api.GetResumeWorkExperienceList)  // 获取工作经历管理列表
	}
	{
	    工作经历RouterWithoutAuth.GET("getResumeWorkExperienceDataSource", 工作经历Api.GetResumeWorkExperienceDataSource)  // 获取工作经历管理数据源
	    工作经历RouterWithoutAuth.GET("getResumeWorkExperiencePublic", 工作经历Api.GetResumeWorkExperiencePublic)  // 工作经历管理开放接口
	}
}
