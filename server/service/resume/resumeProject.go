package resume

import (
	"context"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/resume"
	resumeReq "github.com/flipped-aurora/gin-vue-admin/server/model/resume/request"
	"gorm.io/gorm"
)

type ResumeProjectService struct{}

// CreateResumeProject 创建项目经验管理记录
// Author [yourname](https://github.com/yourname)
func (项目经验Service *ResumeProjectService) CreateResumeProject(ctx context.Context, 项目经验 *resume.ResumeProject) (err error) {
	err = global.GVA_DB.Create(项目经验).Error
	return err
}

// DeleteResumeProject 删除项目经验管理记录
// Author [yourname](https://github.com/yourname)
func (项目经验Service *ResumeProjectService) DeleteResumeProject(ctx context.Context, ID string, userID uint) (err error) {
	err = global.GVA_DB.Transaction(func(tx *gorm.DB) error {
		if err := tx.Model(&resume.ResumeProject{}).Where("id = ?", ID).Update("deleted_by", userID).Error; err != nil {
			return err
		}
		if err = tx.Delete(&resume.ResumeProject{}, "id = ?", ID).Error; err != nil {
			return err
		}
		return nil
	})
	return err
}

// DeleteResumeProjectByIds 批量删除项目经验管理记录
// Author [yourname](https://github.com/yourname)
func (项目经验Service *ResumeProjectService) DeleteResumeProjectByIds(ctx context.Context, IDs []string, deleted_by uint) (err error) {
	err = global.GVA_DB.Transaction(func(tx *gorm.DB) error {
		if err := tx.Model(&resume.ResumeProject{}).Where("id in ?", IDs).Update("deleted_by", deleted_by).Error; err != nil {
			return err
		}
		if err := tx.Where("id in ?", IDs).Delete(&resume.ResumeProject{}).Error; err != nil {
			return err
		}
		return nil
	})
	return err
}

// UpdateResumeProject 更新项目经验管理记录
// Author [yourname](https://github.com/yourname)
func (项目经验Service *ResumeProjectService) UpdateResumeProject(ctx context.Context, 项目经验 resume.ResumeProject) (err error) {
	err = global.GVA_DB.Model(&resume.ResumeProject{}).Where("id = ?", 项目经验.ID).Updates(&项目经验).Error
	return err
}

// GetResumeProject 根据ID获取项目经验管理记录
// Author [yourname](https://github.com/yourname)
func (项目经验Service *ResumeProjectService) GetResumeProject(ctx context.Context, ID string) (项目经验 resume.ResumeProject, err error) {
	err = global.GVA_DB.Where("id = ?", ID).First(&项目经验).Error
	return
}

// GetResumeProjectInfoList 分页获取项目经验管理记录
// Author [yourname](https://github.com/yourname)
func (项目经验Service *ResumeProjectService) GetResumeProjectInfoList(ctx context.Context, info resumeReq.ResumeProjectSearch) (list []resume.ResumeProject, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	// 创建db
	db := global.GVA_DB.Model(&resume.ResumeProject{})
	var 项目经验s []resume.ResumeProject
	// 如果有条件搜索 下方会自动创建搜索语句
	if len(info.CreatedAtRange) == 2 {
		db = db.Where("created_at BETWEEN ? AND ?", info.CreatedAtRange[0], info.CreatedAtRange[1])
	}

	if info.ResumeId != nil {
		db = db.Where("resume_id = ?", *info.ResumeId)
	}
	if info.ProjectName != nil && *info.ProjectName != "" {
		db = db.Where("project_name LIKE ?", "%"+*info.ProjectName+"%")
	}
	if info.Role != nil && *info.Role != "" {
		db = db.Where("role LIKE ?", "%"+*info.Role+"%")
	}
	if len(info.StartDateRange) == 2 {
		db = db.Where("start_date BETWEEN ? AND ? ", info.StartDateRange[0], info.StartDateRange[1])
	}
	if len(info.EndDateRange) == 2 {
		db = db.Where("end_date BETWEEN ? AND ? ", info.EndDateRange[0], info.EndDateRange[1])
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	var OrderStr string
	orderMap := make(map[string]bool)
	orderMap["id"] = true
	orderMap["created_at"] = true
	orderMap["start_date"] = true
	orderMap["end_date"] = true
	if orderMap[info.Sort] {
		OrderStr = info.Sort
		if info.Order == "descending" {
			OrderStr = OrderStr + " desc"
		}
		db = db.Order(OrderStr)
	}

	if limit != 0 {
		db = db.Limit(limit).Offset(offset)
	}

	err = db.Find(&项目经验s).Error
	return 项目经验s, total, err
}
func (项目经验Service *ResumeProjectService) GetResumeProjectDataSource(ctx context.Context) (res map[string][]map[string]any, err error) {
	res = make(map[string][]map[string]any)

	resumeId := make([]map[string]any, 0)

	global.GVA_DB.Table("resume_basic_info").Where("deleted_at IS NULL").Select("name as label,id as value").Scan(&resumeId)
	res["resumeId"] = resumeId
	return
}
func (项目经验Service *ResumeProjectService) GetResumeProjectPublic(ctx context.Context) {
	// 此方法为获取数据源定义的数据
	// 请自行实现
}
