
// 自动生成模板ResumeWorkExperience
package resume
import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

// 工作经历管理 结构体  ResumeWorkExperience
type ResumeWorkExperience struct {
    global.GVA_MODEL
  ResumeId  *int64 `json:"resumeId" form:"resumeId" gorm:"comment:关联简历基本信息ID;column:resume_id;" binding:"required"`  //简历ID
  CompanyName  *string `json:"companyName" form:"companyName" gorm:"comment:公司名称;column:company_name;size:100;" binding:"required"`  //公司名称
  Position  *string `json:"position" form:"position" gorm:"comment:职位;column:position;size:50;" binding:"required"`  //职位
  StartDate  *time.Time `json:"startDate" form:"startDate" gorm:"comment:工作开始时间;column:start_date;" binding:"required"`  //开始时间
  EndDate  *time.Time `json:"endDate" form:"endDate" gorm:"comment:工作结束时间;column:end_date;"`  //结束时间
  IsCurrent  *bool `json:"isCurrent" form:"isCurrent" gorm:"default:false;comment:是否为当前工作;column:is_current;"`  //是否当前工作
  Description  *string `json:"description" form:"description" gorm:"comment:工作描述;column:description;size:2000;type:text;"`  //工作描述
  Achievements  *string `json:"achievements" form:"achievements" gorm:"comment:主要成就;column:achievements;size:2000;type:text;"`  //主要成就
  SortOrder  *int64 `json:"sortOrder" form:"sortOrder" gorm:"default:0;comment:排序序号;column:sort_order;"`  //排序
    CreatedBy  uint   `gorm:"column:created_by;comment:创建者"`
    UpdatedBy  uint   `gorm:"column:updated_by;comment:更新者"`
    DeletedBy  uint   `gorm:"column:deleted_by;comment:删除者"`
}


// TableName 工作经历管理 ResumeWorkExperience自定义表名 resume_work_experience
func (ResumeWorkExperience) TableName() string {
    return "resume_work_experience"
}





