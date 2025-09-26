package resume

import (
	"context"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/resume"
	resumeReq "github.com/flipped-aurora/gin-vue-admin/server/model/resume/request"
	"gorm.io/gorm"
)

type ResumeBasicInfoService struct{}

// CreateResumeBasicInfo 创建个人基本信息管理记录
// Author [yourname](https://github.com/yourname)
func (基本信息Service *ResumeBasicInfoService) CreateResumeBasicInfo(ctx context.Context, 基本信息 *resume.ResumeBasicInfo) (err error) {
	err = global.GVA_DB.Create(基本信息).Error
	return err
}

// DeleteResumeBasicInfo 删除个人基本信息管理记录
// Author [yourname](https://github.com/yourname)
func (基本信息Service *ResumeBasicInfoService) DeleteResumeBasicInfo(ctx context.Context, ID string, userID uint) (err error) {
	err = global.GVA_DB.Transaction(func(tx *gorm.DB) error {
		if err := tx.Model(&resume.ResumeBasicInfo{}).Where("id = ?", ID).Update("deleted_by", userID).Error; err != nil {
			return err
		}
		if err = tx.Delete(&resume.ResumeBasicInfo{}, "id = ?", ID).Error; err != nil {
			return err
		}
		return nil
	})
	return err
}

// DeleteResumeBasicInfoByIds 批量删除个人基本信息管理记录
// Author [yourname](https://github.com/yourname)
func (基本信息Service *ResumeBasicInfoService) DeleteResumeBasicInfoByIds(ctx context.Context, IDs []string, deleted_by uint) (err error) {
	err = global.GVA_DB.Transaction(func(tx *gorm.DB) error {
		if err := tx.Model(&resume.ResumeBasicInfo{}).Where("id in ?", IDs).Update("deleted_by", deleted_by).Error; err != nil {
			return err
		}
		if err := tx.Where("id in ?", IDs).Delete(&resume.ResumeBasicInfo{}).Error; err != nil {
			return err
		}
		return nil
	})
	return err
}

// UpdateResumeBasicInfo 更新个人基本信息管理记录
// Author [yourname](https://github.com/yourname)
func (基本信息Service *ResumeBasicInfoService) UpdateResumeBasicInfo(ctx context.Context, 基本信息 resume.ResumeBasicInfo) (err error) {
	err = global.GVA_DB.Model(&resume.ResumeBasicInfo{}).Where("id = ?", 基本信息.ID).Updates(&基本信息).Error
	return err
}

// GetResumeBasicInfo 根据ID获取个人基本信息管理记录
// Author [yourname](https://github.com/yourname)
func (基本信息Service *ResumeBasicInfoService) GetResumeBasicInfo(ctx context.Context, ID string) (基本信息 resume.ResumeBasicInfo, err error) {
	err = global.GVA_DB.Where("id = ?", ID).First(&基本信息).Error
	return
}

// GetResumeBasicInfoInfoList 分页获取个人基本信息管理记录
// Author [yourname](https://github.com/yourname)
func (基本信息Service *ResumeBasicInfoService) GetResumeBasicInfoInfoList(ctx context.Context, info resumeReq.ResumeBasicInfoSearch) (list []resume.ResumeBasicInfo, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	// 创建db
	db := global.GVA_DB.Model(&resume.ResumeBasicInfo{})
	var 基本信息s []resume.ResumeBasicInfo
	// 如果有条件搜索 下方会自动创建搜索语句
	if len(info.CreatedAtRange) == 2 {
		db = db.Where("created_at BETWEEN ? AND ?", info.CreatedAtRange[0], info.CreatedAtRange[1])
	}

	if info.Name != nil && *info.Name != "" {
		db = db.Where("name LIKE ?", "%"+*info.Name+"%")
	}
	if info.Phone != nil && *info.Phone != "" {
		db = db.Where("phone = ?", *info.Phone)
	}
	if info.Email != nil && *info.Email != "" {
		db = db.Where("email LIKE ?", "%"+*info.Email+"%")
	}
	if info.Address != nil && *info.Address != "" {
		db = db.Where("address LIKE ?", "%"+*info.Address+"%")
	}
	if info.IsPublic != nil {
		db = db.Where("is_public = ?", *info.IsPublic)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}

	if limit != 0 {
		db = db.Limit(limit).Offset(offset)
	}

	err = db.Find(&基本信息s).Error
	return 基本信息s, total, err
}
func (基本信息Service *ResumeBasicInfoService) GetResumeBasicInfoPublic(ctx context.Context) {
	// 此方法为获取数据源定义的数据
	// 请自行实现
}
