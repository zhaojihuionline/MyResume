package resume

import "github.com/flipped-aurora/gin-vue-admin/server/service"

type ApiGroup struct {
	ResumeBasicInfoApi
	ResumeWorkExperienceApi
	ResumeEducationApi
	ResumeProjectApi
}

var (
	基本信息Service = service.ServiceGroupApp.ResumeServiceGroup.ResumeBasicInfoService
	工作经历Service = service.ServiceGroupApp.ResumeServiceGroup.ResumeWorkExperienceService
	教育背景Service = service.ServiceGroupApp.ResumeServiceGroup.ResumeEducationService
	项目经验Service = service.ServiceGroupApp.ResumeServiceGroup.ResumeProjectService
)
