
// 自动生成模板ResumeProject
package resume
import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
	"gorm.io/datatypes"
)

// 项目经验管理 结构体  ResumeProject
type ResumeProject struct {
    global.GVA_MODEL
  ResumeId  *int64 `json:"resumeId" form:"resumeId" gorm:"comment:关联简历基本信息ID;column:resume_id;" binding:"required"`  //简历ID
  ProjectName  *string `json:"projectName" form:"projectName" gorm:"comment:项目名称;column:project_name;size:100;" binding:"required"`  //项目名称
  Role  *string `json:"role" form:"role" gorm:"comment:在项目中担任的角色;column:role;size:50;" binding:"required"`  //担任角色
  StartDate  *time.Time `json:"startDate" form:"startDate" gorm:"comment:项目开始时间;column:start_date;" binding:"required"`  //开始时间
  EndDate  *time.Time `json:"endDate" form:"endDate" gorm:"comment:项目结束时间;column:end_date;"`  //结束时间
  Technologies  datatypes.JSON `json:"technologies" form:"technologies" gorm:"comment:使用的技术栈;column:technologies;size:500;" swaggertype:"object"`  //技术栈
  Description  *string `json:"description" form:"description" gorm:"comment:项目详细描述;column:description;size:2000;type:text;"`  //项目描述
  Achievements  *string `json:"achievements" form:"achievements" gorm:"comment:项目成果和个人贡献;column:achievements;size:2000;type:text;"`  //项目成果
  ProjectUrl  *string `json:"projectUrl" form:"projectUrl" gorm:"comment:项目访问链接;column:project_url;size:255;"`  //项目链接
  Screenshots  datatypes.JSON `json:"screenshots" form:"screenshots" gorm:"comment:项目截图;column:screenshots;size:1000;" swaggertype:"array,object"`  //项目截图
    CreatedBy  uint   `gorm:"column:created_by;comment:创建者"`
    UpdatedBy  uint   `gorm:"column:updated_by;comment:更新者"`
    DeletedBy  uint   `gorm:"column:deleted_by;comment:删除者"`
}


// TableName 项目经验管理 ResumeProject自定义表名 resume_project
func (ResumeProject) TableName() string {
    return "resume_project"
}





