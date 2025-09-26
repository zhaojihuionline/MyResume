
package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"time"
)

type ResumeBasicInfoSearch struct{
    CreatedAtRange []time.Time `json:"createdAtRange" form:"createdAtRange[]"`
      Name  *string `json:"name" form:"name"` 
      Phone  *string `json:"phone" form:"phone"` 
      Email  *string `json:"email" form:"email"` 
      Address  *string `json:"address" form:"address"` 
      IsPublic  *bool `json:"isPublic" form:"isPublic"` 
    request.PageInfo
}
