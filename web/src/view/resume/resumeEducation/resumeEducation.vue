
<template>
  <div>
    <div class="gva-search-box">
      <el-form ref="elSearchFormRef" :inline="true" :model="searchInfo" class="demo-form-inline" @keyup.enter="onSubmit">
      <el-form-item label="创建日期" prop="createdAtRange">
      <template #label>
        <span>
          创建日期
          <el-tooltip content="搜索范围是开始日期（包含）至结束日期（不包含）">
            <el-icon><QuestionFilled /></el-icon>
          </el-tooltip>
        </span>
      </template>

      <el-date-picker
            v-model="searchInfo.createdAtRange"
            class="!w-380px"
            type="datetimerange"
            range-separator="至"
            start-placeholder="开始时间"
            end-placeholder="结束时间"
          />
       </el-form-item>
      
            <el-form-item label="简历ID" prop="resumeId">
  <el-select multiple v-model="searchInfo.resumeId" filterable placeholder="请选择简历ID" :clearable="true">
    <el-option v-for="(item,key) in dataSource.resumeId" :key="key" :label="item.label" :value="item.value" />
  </el-select>
</el-form-item>
            
            <el-form-item label="学校" prop="school">
  <el-input v-model="searchInfo.school" placeholder="搜索条件" />
</el-form-item>
            
            <el-form-item label="专业" prop="major">
  <el-input v-model="searchInfo.major" placeholder="搜索条件" />
</el-form-item>
            
            <el-form-item label="学历" prop="degree">
  <el-select v-model="searchInfo.degree" clearable filterable placeholder="请选择" @clear="()=>{searchInfo.degree=undefined}">
    <el-option v-for="(item,key) in resume_degree_typeOptions" :key="key" :label="item.label" :value="item.value" />
  </el-select>
</el-form-item>
            
            <el-form-item label="入学时间" prop="startDate">
  <template #label>
    <span>
      入学时间
      <el-tooltip content="搜索范围是开始日期（包含）至结束日期（不包含）">
        <el-icon><QuestionFilled /></el-icon>
      </el-tooltip>
    </span>
  </template>
<el-date-picker class="!w-380px" v-model="searchInfo.startDateRange" type="datetimerange" range-separator="至"  start-placeholder="开始时间" end-placeholder="结束时间"></el-date-picker></el-form-item>
            
            <el-form-item label="毕业时间" prop="endDate">
  <template #label>
    <span>
      毕业时间
      <el-tooltip content="搜索范围是开始日期（包含）至结束日期（不包含）">
        <el-icon><QuestionFilled /></el-icon>
      </el-tooltip>
    </span>
  </template>
<el-date-picker class="!w-380px" v-model="searchInfo.endDateRange" type="datetimerange" range-separator="至"  start-placeholder="开始时间" end-placeholder="结束时间"></el-date-picker></el-form-item>
            

        <template v-if="showAllQuery">
          <!-- 将需要控制显示状态的查询条件添加到此范围内 -->
        </template>

        <el-form-item>
          <el-button type="primary" icon="search" @click="onSubmit">查询</el-button>
          <el-button icon="refresh" @click="onReset">重置</el-button>
          <el-button link type="primary" icon="arrow-down" @click="showAllQuery=true" v-if="!showAllQuery">展开</el-button>
          <el-button link type="primary" icon="arrow-up" @click="showAllQuery=false" v-else>收起</el-button>
        </el-form-item>
      </el-form>
    </div>
    <div class="gva-table-box">
        <div class="gva-btn-list">
            <el-button v-auth="btnAuth.add" type="primary" icon="plus" @click="openDialog()">新增</el-button>
            <el-button v-auth="btnAuth.batchDelete" icon="delete" style="margin-left: 10px;" :disabled="!multipleSelection.length" @click="onDelete">删除</el-button>
            <ExportTemplate v-auth="btnAuth.exportTemplate" template-id="resume_ResumeEducation" />
            <ExportExcel v-auth="btnAuth.exportExcel" template-id="resume_ResumeEducation" filterDeleted/>
            <ImportExcel v-auth="btnAuth.importExcel" template-id="resume_ResumeEducation" @on-success="getTableData" />
        </div>
        <el-table
        ref="multipleTable"
        style="width: 100%"
        tooltip-effect="dark"
        :data="tableData"
        row-key="ID"
        @selection-change="handleSelectionChange"
        @sort-change="sortChange"
        >
        <el-table-column type="selection" width="55" />
        
        <el-table-column sortable align="left" label="日期" prop="CreatedAt" width="180">
            <template #default="scope">{{ formatDate(scope.row.CreatedAt) }}</template>
        </el-table-column>
        
            <el-table-column align="left" label="简历ID" prop="resumeId" width="120">
    <template #default="scope">
        <el-tag v-for="(item,key) in filterDataSource(dataSource.resumeId,scope.row.resumeId)" :key="key">
             {{ item }}
        </el-tag>
    </template>
</el-table-column>
            <el-table-column align="left" label="学校" prop="school" width="120" />

            <el-table-column align="left" label="专业" prop="major" width="120" />

            <el-table-column align="left" label="学历" prop="degree" width="120">
    <template #default="scope">
    {{ filterDict(scope.row.degree,resume_degree_typeOptions) }}
    </template>
</el-table-column>
            <el-table-column sortable align="left" label="入学时间" prop="startDate" width="180">
   <template #default="scope">{{ formatDate(scope.row.startDate) }}</template>
</el-table-column>
            <el-table-column sortable align="left" label="毕业时间" prop="endDate" width="180">
   <template #default="scope">{{ formatDate(scope.row.endDate) }}</template>
</el-table-column>
            <el-table-column align="left" label="GPA成绩" prop="gpa" width="120" />

        <el-table-column align="left" label="操作" fixed="right" :min-width="appStore.operateMinWith">
            <template #default="scope">
            <el-button v-auth="btnAuth.info" type="primary" link class="table-button" @click="getDetails(scope.row)"><el-icon style="margin-right: 5px"><InfoFilled /></el-icon>查看</el-button>
            <el-button v-auth="btnAuth.edit" type="primary" link icon="edit" class="table-button" @click="updateResumeEducationFunc(scope.row)">编辑</el-button>
            <el-button  v-auth="btnAuth.delete" type="primary" link icon="delete" @click="deleteRow(scope.row)">删除</el-button>
            </template>
        </el-table-column>
        </el-table>
        <div class="gva-pagination">
            <el-pagination
            layout="total, sizes, prev, pager, next, jumper"
            :current-page="page"
            :page-size="pageSize"
            :page-sizes="[10, 30, 50, 100]"
            :total="total"
            @current-change="handleCurrentChange"
            @size-change="handleSizeChange"
            />
        </div>
    </div>
    <el-drawer destroy-on-close :size="appStore.drawerSize" v-model="dialogFormVisible" :show-close="false" :before-close="closeDialog">
       <template #header>
              <div class="flex justify-between items-center">
                <span class="text-lg">{{type==='create'?'新增':'编辑'}}</span>
                <div>
                  <el-button :loading="btnLoading" type="primary" @click="enterDialog">确 定</el-button>
                  <el-button @click="closeDialog">取 消</el-button>
                </div>
              </div>
            </template>

          <el-form :model="formData" label-position="top" ref="elFormRef" :rules="rule" label-width="80px">
            <el-form-item label="简历ID:" prop="resumeId">
    <el-select multiple v-model="formData.resumeId" placeholder="请选择简历ID" filterable style="width:100%" :clearable="true">
        <el-option v-for="(item,key) in dataSource.resumeId" :key="key" :label="item.label" :value="item.value" />
    </el-select>
</el-form-item>
            <el-form-item label="学校:" prop="school">
    <el-input v-model="formData.school" :clearable="true" placeholder="请输入学校" />
</el-form-item>
            <el-form-item label="专业:" prop="major">
    <el-input v-model="formData.major" :clearable="true" placeholder="请输入专业" />
</el-form-item>
            <el-form-item label="学历:" prop="degree">
    <el-select v-model="formData.degree" placeholder="请选择学历" style="width:100%" filterable :clearable="true">
        <el-option v-for="(item,key) in resume_degree_typeOptions" :key="key" :label="item.label" :value="item.value" />
    </el-select>
</el-form-item>
            <el-form-item label="入学时间:" prop="startDate">
    <el-date-picker v-model="formData.startDate" type="date" style="width:100%" placeholder="选择日期" :clearable="true" />
</el-form-item>
            <el-form-item label="毕业时间:" prop="endDate">
    <el-date-picker v-model="formData.endDate" type="date" style="width:100%" placeholder="选择日期" :clearable="true" />
</el-form-item>
            <el-form-item label="GPA成绩:" prop="gpa">
    <el-input v-model="formData.gpa" :clearable="true" placeholder="请输入GPA成绩" />
</el-form-item>
            <el-form-item label="在校表现:" prop="description">
    <RichEdit v-model="formData.description"/>
</el-form-item>
          </el-form>
    </el-drawer>

    <el-drawer destroy-on-close :size="appStore.drawerSize" v-model="detailShow" :show-close="true" :before-close="closeDetailShow" title="查看">
            <el-descriptions :column="1" border>
                    <el-descriptions-item label="简历ID">
    <template #default="scope">
        <el-tag v-for="(item,key) in filterDataSource(dataSource.resumeId,detailForm.resumeId)" :key="key">
             {{ item }}
        </el-tag>
    </template>
</el-descriptions-item>
                    <el-descriptions-item label="学校">
    {{ detailForm.school }}
</el-descriptions-item>
                    <el-descriptions-item label="专业">
    {{ detailForm.major }}
</el-descriptions-item>
                    <el-descriptions-item label="学历">
    {{ detailForm.degree }}
</el-descriptions-item>
                    <el-descriptions-item label="入学时间">
    {{ detailForm.startDate }}
</el-descriptions-item>
                    <el-descriptions-item label="毕业时间">
    {{ detailForm.endDate }}
</el-descriptions-item>
                    <el-descriptions-item label="GPA成绩">
    {{ detailForm.gpa }}
</el-descriptions-item>
                    <el-descriptions-item label="在校表现">
    <RichView v-model="detailForm.description" />
</el-descriptions-item>
            </el-descriptions>
        </el-drawer>

  </div>
</template>

<script setup>
import {
    getResumeEducationDataSource,
  createResumeEducation,
  deleteResumeEducation,
  deleteResumeEducationByIds,
  updateResumeEducation,
  findResumeEducation,
  getResumeEducationList
} from '@/api/resume/resumeEducation'
// 富文本组件
import RichEdit from '@/components/richtext/rich-edit.vue'
import RichView from '@/components/richtext/rich-view.vue'

// 全量引入格式化工具 请按需保留
import { getDictFunc, formatDate, formatBoolean, filterDict ,filterDataSource, returnArrImg, onDownloadFile } from '@/utils/format'
import { ElMessage, ElMessageBox } from 'element-plus'
import { ref, reactive } from 'vue'
// 引入按钮权限标识
import { useBtnAuth } from '@/utils/btnAuth'
import { useAppStore } from "@/pinia"

// 导出组件
import ExportExcel from '@/components/exportExcel/exportExcel.vue'
// 导入组件
import ImportExcel from '@/components/exportExcel/importExcel.vue'
// 导出模板组件
import ExportTemplate from '@/components/exportExcel/exportTemplate.vue'


defineOptions({
    name: 'ResumeEducation'
})
// 按钮权限实例化
    const btnAuth = useBtnAuth()

// 提交按钮loading
const btnLoading = ref(false)
const appStore = useAppStore()

// 控制更多查询条件显示/隐藏状态
const showAllQuery = ref(false)

// 自动化生成的字典（可能为空）以及字段
const resume_degree_typeOptions = ref([])
const formData = ref({
            resumeId: undefined,
            school: '',
            major: '',
            degree: '',
            startDate: new Date(),
            endDate: new Date(),
            gpa: '',
            description: '',
        })
  const dataSource = ref([])
  const getDataSourceFunc = async()=>{
    const res = await getResumeEducationDataSource()
    if (res.code === 0) {
      dataSource.value = res.data
    }
  }
  getDataSourceFunc()



// 验证规则
const rule = reactive({
               resumeId : [{
                   required: true,
                   message: '请选择简历',
                   trigger: ['input','blur'],
               },
              ],
               school : [{
                   required: true,
                   message: '请输入学校名称',
                   trigger: ['input','blur'],
               },
               {
                   whitespace: true,
                   message: '不能只输入空格',
                   trigger: ['input', 'blur'],
              }
              ],
               major : [{
                   required: true,
                   message: '请输入专业',
                   trigger: ['input','blur'],
               },
               {
                   whitespace: true,
                   message: '不能只输入空格',
                   trigger: ['input', 'blur'],
              }
              ],
               degree : [{
                   required: true,
                   message: '请选择学历',
                   trigger: ['input','blur'],
               },
               {
                   whitespace: true,
                   message: '不能只输入空格',
                   trigger: ['input', 'blur'],
              }
              ],
               startDate : [{
                   required: true,
                   message: '请选择入学时间',
                   trigger: ['input','blur'],
               },
              ],
               endDate : [{
                   required: true,
                   message: '请选择毕业时间',
                   trigger: ['input','blur'],
               },
              ],
})

const elFormRef = ref()
const elSearchFormRef = ref()

// =========== 表格控制部分 ===========
const page = ref(1)
const total = ref(0)
const pageSize = ref(10)
const tableData = ref([])
const searchInfo = ref({})
// 排序
const sortChange = ({ prop, order }) => {
  const sortMap = {
    CreatedAt:"created_at",
    ID:"id",
            startDate: 'start_date',
            endDate: 'end_date',
  }

  let sort = sortMap[prop]
  if(!sort){
   sort = prop.replace(/[A-Z]/g, match => `_${match.toLowerCase()}`)
  }

  searchInfo.value.sort = sort
  searchInfo.value.order = order
  getTableData()
}
// 重置
const onReset = () => {
  searchInfo.value = {}
  getTableData()
}

// 搜索
const onSubmit = () => {
  elSearchFormRef.value?.validate(async(valid) => {
    if (!valid) return
    page.value = 1
    getTableData()
  })
}

// 分页
const handleSizeChange = (val) => {
  pageSize.value = val
  getTableData()
}

// 修改页面容量
const handleCurrentChange = (val) => {
  page.value = val
  getTableData()
}

// 查询
const getTableData = async() => {
  const table = await getResumeEducationList({ page: page.value, pageSize: pageSize.value, ...searchInfo.value })
  if (table.code === 0) {
    tableData.value = table.data.list
    total.value = table.data.total
    page.value = table.data.page
    pageSize.value = table.data.pageSize
  }
}

getTableData()

// ============== 表格控制部分结束 ===============

// 获取需要的字典 可能为空 按需保留
const setOptions = async () =>{
    resume_degree_typeOptions.value = await getDictFunc('resume_degree_type')
}

// 获取需要的字典 可能为空 按需保留
setOptions()


// 多选数据
const multipleSelection = ref([])
// 多选
const handleSelectionChange = (val) => {
    multipleSelection.value = val
}

// 删除行
const deleteRow = (row) => {
    ElMessageBox.confirm('确定要删除吗?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
    }).then(() => {
            deleteResumeEducationFunc(row)
        })
    }

// 多选删除
const onDelete = async() => {
  ElMessageBox.confirm('确定要删除吗?', '提示', {
    confirmButtonText: '确定',
    cancelButtonText: '取消',
    type: 'warning'
  }).then(async() => {
      const IDs = []
      if (multipleSelection.value.length === 0) {
        ElMessage({
          type: 'warning',
          message: '请选择要删除的数据'
        })
        return
      }
      multipleSelection.value &&
        multipleSelection.value.map(item => {
          IDs.push(item.ID)
        })
      const res = await deleteResumeEducationByIds({ IDs })
      if (res.code === 0) {
        ElMessage({
          type: 'success',
          message: '删除成功'
        })
        if (tableData.value.length === IDs.length && page.value > 1) {
          page.value--
        }
        getTableData()
      }
      })
    }

// 行为控制标记（弹窗内部需要增还是改）
const type = ref('')

// 更新行
const updateResumeEducationFunc = async(row) => {
    const res = await findResumeEducation({ ID: row.ID })
    type.value = 'update'
    if (res.code === 0) {
        formData.value = res.data
        dialogFormVisible.value = true
    }
}


// 删除行
const deleteResumeEducationFunc = async (row) => {
    const res = await deleteResumeEducation({ ID: row.ID })
    if (res.code === 0) {
        ElMessage({
                type: 'success',
                message: '删除成功'
            })
            if (tableData.value.length === 1 && page.value > 1) {
            page.value--
        }
        getTableData()
    }
}

// 弹窗控制标记
const dialogFormVisible = ref(false)

// 打开弹窗
const openDialog = () => {
    type.value = 'create'
    dialogFormVisible.value = true
}

// 关闭弹窗
const closeDialog = () => {
    dialogFormVisible.value = false
    formData.value = {
        resumeId: undefined,
        school: '',
        major: '',
        degree: '',
        startDate: new Date(),
        endDate: new Date(),
        gpa: '',
        description: '',
        }
}
// 弹窗确定
const enterDialog = async () => {
     btnLoading.value = true
     elFormRef.value?.validate( async (valid) => {
             if (!valid) return btnLoading.value = false
              let res
              switch (type.value) {
                case 'create':
                  res = await createResumeEducation(formData.value)
                  break
                case 'update':
                  res = await updateResumeEducation(formData.value)
                  break
                default:
                  res = await createResumeEducation(formData.value)
                  break
              }
              btnLoading.value = false
              if (res.code === 0) {
                ElMessage({
                  type: 'success',
                  message: '创建/更改成功'
                })
                closeDialog()
                getTableData()
              }
      })
}

const detailForm = ref({})

// 查看详情控制标记
const detailShow = ref(false)


// 打开详情弹窗
const openDetailShow = () => {
  detailShow.value = true
}


// 打开详情
const getDetails = async (row) => {
  // 打开弹窗
  const res = await findResumeEducation({ ID: row.ID })
  if (res.code === 0) {
    detailForm.value = res.data
    openDetailShow()
  }
}


// 关闭详情弹窗
const closeDetailShow = () => {
  detailShow.value = false
  detailForm.value = {}
}


</script>

<style>

</style>
