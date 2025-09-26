package resume

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type ResumeBasicInfoRouter struct {}

// InitResumeBasicInfoRouter 初始化 个人基本信息管理 路由信息
func (s *ResumeBasicInfoRouter) InitResumeBasicInfoRouter(Router *gin.RouterGroup,PublicRouter *gin.RouterGroup) {
	基本信息Router := Router.Group("基本信息").Use(middleware.OperationRecord())
	基本信息RouterWithoutRecord := Router.Group("基本信息")
	基本信息RouterWithoutAuth := PublicRouter.Group("基本信息")
	{
		基本信息Router.POST("createResumeBasicInfo", 基本信息Api.CreateResumeBasicInfo)   // 新建个人基本信息管理
		基本信息Router.DELETE("deleteResumeBasicInfo", 基本信息Api.DeleteResumeBasicInfo) // 删除个人基本信息管理
		基本信息Router.DELETE("deleteResumeBasicInfoByIds", 基本信息Api.DeleteResumeBasicInfoByIds) // 批量删除个人基本信息管理
		基本信息Router.PUT("updateResumeBasicInfo", 基本信息Api.UpdateResumeBasicInfo)    // 更新个人基本信息管理
	}
	{
		基本信息RouterWithoutRecord.GET("findResumeBasicInfo", 基本信息Api.FindResumeBasicInfo)        // 根据ID获取个人基本信息管理
		基本信息RouterWithoutRecord.GET("getResumeBasicInfoList", 基本信息Api.GetResumeBasicInfoList)  // 获取个人基本信息管理列表
	}
	{
	    基本信息RouterWithoutAuth.GET("getResumeBasicInfoPublic", 基本信息Api.GetResumeBasicInfoPublic)  // 个人基本信息管理开放接口
	}
}
