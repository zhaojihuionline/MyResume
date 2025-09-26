package initialize

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/resume"
)

func bizModel() error {
	db := global.GVA_DB
	err := db.AutoMigrate(resume.ResumeBasicInfo{}, resume.ResumeWorkExperience{}, resume.ResumeEducation{}, resume.ResumeProject{})
	if err != nil {
		return err
	}
	return nil
}
