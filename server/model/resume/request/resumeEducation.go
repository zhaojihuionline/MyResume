package request

import (
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
)

type ResumeEducationSearch struct {
	CreatedAtRange []time.Time `json:"createdAtRange" form:"createdAtRange[]"`
	ResumeId       *int        `json:"resumeId" form:"resumeId"`
	School         *string     `json:"school" form:"school"`
	Major          *string     `json:"major" form:"major"`
	Degree         *string     `json:"degree" form:"degree"`
	StartDateRange []time.Time `json:"startDateRange" form:"startDateRange[]"`
	EndDateRange   []time.Time `json:"endDateRange" form:"endDateRange[]"`
	request.PageInfo
	Sort  string `json:"sort" form:"sort"`
	Order string `json:"order" form:"order"`
}
