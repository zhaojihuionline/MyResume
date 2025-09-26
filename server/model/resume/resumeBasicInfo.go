
// 自动生成模板ResumeBasicInfo
package resume
import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"gorm.io/datatypes"
)

// 个人基本信息管理 结构体  ResumeBasicInfo
type ResumeBasicInfo struct {
    global.GVA_MODEL
  Name  *string `json:"name" form:"name" gorm:"comment:姓名;column:name;size:50;" binding:"required"`  //姓名
  Avatar  string `json:"avatar" form:"avatar" gorm:"comment:头像;column:avatar;size:255;"`  //头像
  Phone  *string `json:"phone" form:"phone" gorm:"comment:联系电话;column:phone;size:20;" binding:"required"`  //联系电话
  Email  *string `json:"email" form:"email" gorm:"comment:邮箱;column:email;size:100;" binding:"required"`  //邮箱
  Address  *string `json:"address" form:"address" gorm:"comment:地址;column:address;size:200;"`  //地址
  Summary  *string `json:"summary" form:"summary" gorm:"comment:个人简介;column:summary;size:2000;type:text;"`  //个人简介
  Skills  datatypes.JSON `json:"skills" form:"skills" gorm:"comment:技能标签JSON;column:skills;size:1000;" swaggertype:"object"`  //技能标签
  IsPublic  *bool `json:"isPublic" form:"isPublic" gorm:"default:false;comment:是否公开简历;column:is_public;"`  //是否公开
    CreatedBy  uint   `gorm:"column:created_by;comment:创建者"`
    UpdatedBy  uint   `gorm:"column:updated_by;comment:更新者"`
    DeletedBy  uint   `gorm:"column:deleted_by;comment:删除者"`
}


// TableName 个人基本信息管理 ResumeBasicInfo自定义表名 resume_basic_info
func (ResumeBasicInfo) TableName() string {
    return "resume_basic_info"
}





