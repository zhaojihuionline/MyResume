
// 自动生成模板ResumeEducation
package resume
import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

// 教育背景管理 结构体  ResumeEducation
type ResumeEducation struct {
    global.GVA_MODEL
  ResumeId  *int64 `json:"resumeId" form:"resumeId" gorm:"comment:关联简历基本信息ID;column:resume_id;" binding:"required"`  //简历ID
  School  *string `json:"school" form:"school" gorm:"comment:学校名称;column:school;size:100;" binding:"required"`  //学校
  Major  *string `json:"major" form:"major" gorm:"comment:专业;column:major;size:100;" binding:"required"`  //专业
  Degree  *string `json:"degree" form:"degree" gorm:"comment:学历;column:degree;size:50;" binding:"required"`  //学历
  StartDate  *time.Time `json:"startDate" form:"startDate" gorm:"comment:入学时间;column:start_date;" binding:"required"`  //入学时间
  EndDate  *time.Time `json:"endDate" form:"endDate" gorm:"comment:毕业时间;column:end_date;" binding:"required"`  //毕业时间
  GPA  *string `json:"gpa" form:"gpa" gorm:"comment:GPA成绩;column:gpa;size:20;"`  //GPA成绩
  Description  *string `json:"description" form:"description" gorm:"comment:在校表现描述;column:description;size:1000;type:text;"`  //在校表现
    CreatedBy  uint   `gorm:"column:created_by;comment:创建者"`
    UpdatedBy  uint   `gorm:"column:updated_by;comment:更新者"`
    DeletedBy  uint   `gorm:"column:deleted_by;comment:删除者"`
}


// TableName 教育背景管理 ResumeEducation自定义表名 resume_education
func (ResumeEducation) TableName() string {
    return "resume_education"
}





