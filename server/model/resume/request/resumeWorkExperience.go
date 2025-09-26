
package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"time"
)

type ResumeWorkExperienceSearch struct{
    CreatedAtRange []time.Time `json:"createdAtRange" form:"createdAtRange[]"`
      ResumeId  *int `json:"resumeId" form:"resumeId"` 
      CompanyName  *string `json:"companyName" form:"companyName"` 
      Position  *string `json:"position" form:"position"` 
      StartDateRange  []time.Time  `json:"startDateRange" form:"startDateRange[]"`
      EndDateRange  []time.Time  `json:"endDateRange" form:"endDateRange[]"`
      IsCurrent  *bool `json:"isCurrent" form:"isCurrent"` 
    request.PageInfo
    Sort  string `json:"sort" form:"sort"`
    Order string `json:"order" form:"order"`
}
