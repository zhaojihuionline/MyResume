
package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"time"
)

type ResumeProjectSearch struct{
    CreatedAtRange []time.Time `json:"createdAtRange" form:"createdAtRange[]"`
      ResumeId  *int `json:"resumeId" form:"resumeId"` 
      ProjectName  *string `json:"projectName" form:"projectName"` 
      Role  *string `json:"role" form:"role"` 
      StartDateRange  []time.Time  `json:"startDateRange" form:"startDateRange[]"`
      EndDateRange  []time.Time  `json:"endDateRange" form:"endDateRange[]"`
    request.PageInfo
    Sort  string `json:"sort" form:"sort"`
    Order string `json:"order" form:"order"`
}
