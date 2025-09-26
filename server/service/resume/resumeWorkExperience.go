package resume

import (
	"context"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/resume"
	resumeReq "github.com/flipped-aurora/gin-vue-admin/server/model/resume/request"
	"gorm.io/gorm"
)

type ResumeWorkExperienceService struct{}

// CreateResumeWorkExperience 创建工作经历管理记录
// Author [yourname](https://github.com/yourname)
func (工作经历Service *ResumeWorkExperienceService) CreateResumeWorkExperience(ctx context.Context, 工作经历 *resume.ResumeWorkExperience) (err error) {
	err = global.GVA_DB.Create(工作经历).Error
	return err
}

// DeleteResumeWorkExperience 删除工作经历管理记录
// Author [yourname](https://github.com/yourname)
func (工作经历Service *ResumeWorkExperienceService) DeleteResumeWorkExperience(ctx context.Context, ID string, userID uint) (err error) {
	err = global.GVA_DB.Transaction(func(tx *gorm.DB) error {
		if err := tx.Model(&resume.ResumeWorkExperience{}).Where("id = ?", ID).Update("deleted_by", userID).Error; err != nil {
			return err
		}
		if err = tx.Delete(&resume.ResumeWorkExperience{}, "id = ?", ID).Error; err != nil {
			return err
		}
		return nil
	})
	return err
}

// DeleteResumeWorkExperienceByIds 批量删除工作经历管理记录
// Author [yourname](https://github.com/yourname)
func (工作经历Service *ResumeWorkExperienceService) DeleteResumeWorkExperienceByIds(ctx context.Context, IDs []string, deleted_by uint) (err error) {
	err = global.GVA_DB.Transaction(func(tx *gorm.DB) error {
		if err := tx.Model(&resume.ResumeWorkExperience{}).Where("id in ?", IDs).Update("deleted_by", deleted_by).Error; err != nil {
			return err
		}
		if err := tx.Where("id in ?", IDs).Delete(&resume.ResumeWorkExperience{}).Error; err != nil {
			return err
		}
		return nil
	})
	return err
}

// UpdateResumeWorkExperience 更新工作经历管理记录
// Author [yourname](https://github.com/yourname)
func (工作经历Service *ResumeWorkExperienceService) UpdateResumeWorkExperience(ctx context.Context, 工作经历 resume.ResumeWorkExperience) (err error) {
	err = global.GVA_DB.Model(&resume.ResumeWorkExperience{}).Where("id = ?", 工作经历.ID).Updates(&工作经历).Error
	return err
}

// GetResumeWorkExperience 根据ID获取工作经历管理记录
// Author [yourname](https://github.com/yourname)
func (工作经历Service *ResumeWorkExperienceService) GetResumeWorkExperience(ctx context.Context, ID string) (工作经历 resume.ResumeWorkExperience, err error) {
	err = global.GVA_DB.Where("id = ?", ID).First(&工作经历).Error
	return
}

// GetResumeWorkExperienceInfoList 分页获取工作经历管理记录
// Author [yourname](https://github.com/yourname)
func (工作经历Service *ResumeWorkExperienceService) GetResumeWorkExperienceInfoList(ctx context.Context, info resumeReq.ResumeWorkExperienceSearch) (list []resume.ResumeWorkExperience, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	// 创建db
	db := global.GVA_DB.Model(&resume.ResumeWorkExperience{})
	var 工作经历s []resume.ResumeWorkExperience
	// 如果有条件搜索 下方会自动创建搜索语句
	if len(info.CreatedAtRange) == 2 {
		db = db.Where("created_at BETWEEN ? AND ?", info.CreatedAtRange[0], info.CreatedAtRange[1])
	}

	if info.ResumeId != nil {
		db = db.Where("resume_id = ?", *info.ResumeId)
	}
	if info.CompanyName != nil && *info.CompanyName != "" {
		db = db.Where("company_name LIKE ?", "%"+*info.CompanyName+"%")
	}
	if info.Position != nil && *info.Position != "" {
		db = db.Where("position LIKE ?", "%"+*info.Position+"%")
	}
	if len(info.StartDateRange) == 2 {
		db = db.Where("start_date BETWEEN ? AND ? ", info.StartDateRange[0], info.StartDateRange[1])
	}
	if len(info.EndDateRange) == 2 {
		db = db.Where("end_date BETWEEN ? AND ? ", info.EndDateRange[0], info.EndDateRange[1])
	}
	if info.IsCurrent != nil {
		db = db.Where("is_current = ?", *info.IsCurrent)
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
	orderMap["sort_order"] = true
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

	err = db.Find(&工作经历s).Error
	return 工作经历s, total, err
}
func (工作经历Service *ResumeWorkExperienceService) GetResumeWorkExperienceDataSource(ctx context.Context) (res map[string][]map[string]any, err error) {
	res = make(map[string][]map[string]any)

	resumeId := make([]map[string]any, 0)

	global.GVA_DB.Table("resume_basic_info").Where("deleted_at IS NULL").Select("name as label,id as value").Scan(&resumeId)
	res["resumeId"] = resumeId
	return
}
func (工作经历Service *ResumeWorkExperienceService) GetResumeWorkExperiencePublic(ctx context.Context) {
	// 此方法为获取数据源定义的数据
	// 请自行实现
}
