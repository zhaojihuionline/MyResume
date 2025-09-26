package resume

import api "github.com/flipped-aurora/gin-vue-admin/server/api/v1"

type RouterGroup struct {
	ResumeBasicInfoRouter
	ResumeWorkExperienceRouter
	ResumeEducationRouter
	ResumeProjectRouter
}

var (
	基本信息Api = api.ApiGroupApp.ResumeApiGroup.ResumeBasicInfoApi
	工作经历Api = api.ApiGroupApp.ResumeApiGroup.ResumeWorkExperienceApi
	教育背景Api = api.ApiGroupApp.ResumeApiGroup.ResumeEducationApi
	项目经验Api = api.ApiGroupApp.ResumeApiGroup.ResumeProjectApi
)
