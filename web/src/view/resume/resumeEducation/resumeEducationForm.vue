
<template>
  <div>
    <div class="gva-form-box">
      <el-form :model="formData" ref="elFormRef" label-position="right" :rules="rule" label-width="80px">
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
        <el-form-item>
          <el-button :loading="btnLoading" type="primary" @click="save">保存</el-button>
          <el-button type="primary" @click="back">返回</el-button>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>

<script setup>
import {
    getResumeEducationDataSource,
  createResumeEducation,
  updateResumeEducation,
  findResumeEducation
} from '@/api/resume/resumeEducation'

defineOptions({
    name: 'ResumeEducationForm'
})

// 自动获取字典
import { getDictFunc } from '@/utils/format'
import { useRoute, useRouter } from "vue-router"
import { ElMessage } from 'element-plus'
import { ref, reactive } from 'vue'
// 富文本组件
import RichEdit from '@/components/richtext/rich-edit.vue'


const route = useRoute()
const router = useRouter()

// 提交按钮loading
const btnLoading = ref(false)

const type = ref('')
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
// 验证规则
const rule = reactive({
               resumeId : [{
                   required: true,
                   message: '请选择简历',
                   trigger: ['input','blur'],
               }],
               school : [{
                   required: true,
                   message: '请输入学校名称',
                   trigger: ['input','blur'],
               }],
               major : [{
                   required: true,
                   message: '请输入专业',
                   trigger: ['input','blur'],
               }],
               degree : [{
                   required: true,
                   message: '请选择学历',
                   trigger: ['input','blur'],
               }],
               startDate : [{
                   required: true,
                   message: '请选择入学时间',
                   trigger: ['input','blur'],
               }],
               endDate : [{
                   required: true,
                   message: '请选择毕业时间',
                   trigger: ['input','blur'],
               }],
})

const elFormRef = ref()
  const dataSource = ref([])
  const getDataSourceFunc = async()=>{
    const res = await getResumeEducationDataSource()
    if (res.code === 0) {
      dataSource.value = res.data
    }
  }
  getDataSourceFunc()

// 初始化方法
const init = async () => {
 // 建议通过url传参获取目标数据ID 调用 find方法进行查询数据操作 从而决定本页面是create还是update 以下为id作为url参数示例
    if (route.query.id) {
      const res = await findResumeEducation({ ID: route.query.id })
      if (res.code === 0) {
        formData.value = res.data
        type.value = 'update'
      }
    } else {
      type.value = 'create'
    }
    resume_degree_typeOptions.value = await getDictFunc('resume_degree_type')
}

init()
// 保存按钮
const save = async() => {
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
           }
       })
}

// 返回按钮
const back = () => {
    router.go(-1)
}

</script>

<style>
</style>
