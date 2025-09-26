package resume

import (
	"context"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/resume"
	resumeReq "github.com/flipped-aurora/gin-vue-admin/server/model/resume/request"
	"gorm.io/gorm"
)

type ResumeEducationService struct{}

// CreateResumeEducation 创建教育背景管理记录
// Author [yourname](https://github.com/yourname)
func (教育背景Service *ResumeEducationService) CreateResumeEducation(ctx context.Context, 教育背景 *resume.ResumeEducation) (err error) {
	err = global.GVA_DB.Create(教育背景).Error
	return err
}

// DeleteResumeEducation 删除教育背景管理记录
// Author [yourname](https://github.com/yourname)
func (教育背景Service *ResumeEducationService) DeleteResumeEducation(ctx context.Context, ID string, userID uint) (err error) {
	err = global.GVA_DB.Transaction(func(tx *gorm.DB) error {
		if err := tx.Model(&resume.ResumeEducation{}).Where("id = ?", ID).Update("deleted_by", userID).Error; err != nil {
			return err
		}
		if err = tx.Delete(&resume.ResumeEducation{}, "id = ?", ID).Error; err != nil {
			return err
		}
		return nil
	})
	return err
}

// DeleteResumeEducationByIds 批量删除教育背景管理记录
// Author [yourname](https://github.com/yourname)
func (教育背景Service *ResumeEducationService) DeleteResumeEducationByIds(ctx context.Context, IDs []string, deleted_by uint) (err error) {
	err = global.GVA_DB.Transaction(func(tx *gorm.DB) error {
		if err := tx.Model(&resume.ResumeEducation{}).Where("id in ?", IDs).Update("deleted_by", deleted_by).Error; err != nil {
			return err
		}
		if err := tx.Where("id in ?", IDs).Delete(&resume.ResumeEducation{}).Error; err != nil {
			return err
		}
		return nil
	})
	return err
}

// UpdateResumeEducation 更新教育背景管理记录
// Author [yourname](https://github.com/yourname)
func (教育背景Service *ResumeEducationService) UpdateResumeEducation(ctx context.Context, 教育背景 resume.ResumeEducation) (err error) {
	err = global.GVA_DB.Model(&resume.ResumeEducation{}).Where("id = ?", 教育背景.ID).Updates(&教育背景).Error
	return err
}

// GetResumeEducation 根据ID获取教育背景管理记录
// Author [yourname](https://github.com/yourname)
func (教育背景Service *ResumeEducationService) GetResumeEducation(ctx context.Context, ID string) (教育背景 resume.ResumeEducation, err error) {
	err = global.GVA_DB.Where("id = ?", ID).First(&教育背景).Error
	return
}

// GetResumeEducationInfoList 分页获取教育背景管理记录
// Author [yourname](https://github.com/yourname)
func (教育背景Service *ResumeEducationService) GetResumeEducationInfoList(ctx context.Context, info resumeReq.ResumeEducationSearch) (list []resume.ResumeEducation, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	// 创建db
	db := global.GVA_DB.Model(&resume.ResumeEducation{})
	var 教育背景s []resume.ResumeEducation
	// 如果有条件搜索 下方会自动创建搜索语句
	if len(info.CreatedAtRange) == 2 {
		db = db.Where("created_at BETWEEN ? AND ?", info.CreatedAtRange[0], info.CreatedAtRange[1])
	}

	if info.ResumeId != nil {
		db = db.Where("resume_id = ?", *info.ResumeId)
	}
	if info.School != nil && *info.School != "" {
		db = db.Where("school LIKE ?", "%"+*info.School+"%")
	}
	if info.Major != nil && *info.Major != "" {
		db = db.Where("major LIKE ?", "%"+*info.Major+"%")
	}
	if info.Degree != nil && *info.Degree != "" {
		db = db.Where("degree = ?", *info.Degree)
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

	err = db.Find(&教育背景s).Error
	return 教育背景s, total, err
}
func (教育背景Service *ResumeEducationService) GetResumeEducationDataSource(ctx context.Context) (res map[string][]map[string]any, err error) {
	res = make(map[string][]map[string]any)

	resumeId := make([]map[string]any, 0)

	global.GVA_DB.Table("resume_basic_info").Where("deleted_at IS NULL").Select("name as label,id as value").Scan(&resumeId)
	res["resumeId"] = resumeId
	return
}
func (教育背景Service *ResumeEducationService) GetResumeEducationPublic(ctx context.Context) {
	// 此方法为获取数据源定义的数据
	// 请自行实现
}
