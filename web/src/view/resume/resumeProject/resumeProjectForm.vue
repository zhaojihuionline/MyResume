
<template>
  <div>
    <div class="gva-form-box">
      <el-form :model="formData" ref="elFormRef" label-position="right" :rules="rule" label-width="80px">
        <el-form-item label="简历ID:" prop="resumeId">
    <el-select multiple v-model="formData.resumeId" placeholder="请选择简历ID" filterable style="width:100%" :clearable="true">
        <el-option v-for="(item,key) in dataSource.resumeId" :key="key" :label="item.label" :value="item.value" />
    </el-select>
</el-form-item>
        <el-form-item label="项目名称:" prop="projectName">
    <el-input v-model="formData.projectName" :clearable="true" placeholder="请输入项目名称" />
</el-form-item>
        <el-form-item label="担任角色:" prop="role">
    <el-input v-model="formData.role" :clearable="true" placeholder="请输入担任角色" />
</el-form-item>
        <el-form-item label="开始时间:" prop="startDate">
    <el-date-picker v-model="formData.startDate" type="date" style="width:100%" placeholder="选择日期" :clearable="true" />
</el-form-item>
        <el-form-item label="结束时间:" prop="endDate">
    <el-date-picker v-model="formData.endDate" type="date" style="width:100%" placeholder="选择日期" :clearable="true" />
</el-form-item>
        <el-form-item label="技术栈:" prop="technologies">
    // 此字段为json结构，可以前端自行控制展示和数据绑定模式 需绑定json的key为 formData.technologies 后端会按照json的类型进行存取
    {{ formData.technologies }}
</el-form-item>
        <el-form-item label="项目描述:" prop="description">
    <RichEdit v-model="formData.description"/>
</el-form-item>
        <el-form-item label="项目成果:" prop="achievements">
    <RichEdit v-model="formData.achievements"/>
</el-form-item>
        <el-form-item label="项目链接:" prop="projectUrl">
    <el-input v-model="formData.projectUrl" :clearable="true" placeholder="请输入项目链接" />
</el-form-item>
        <el-form-item label="项目截图:" prop="screenshots">
    <SelectImage
     multiple
     v-model="formData.screenshots"
     file-type="image"
     />
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
    getResumeProjectDataSource,
  createResumeProject,
  updateResumeProject,
  findResumeProject
} from '@/api/resume/resumeProject'

defineOptions({
    name: 'ResumeProjectForm'
})

// 自动获取字典
import { getDictFunc } from '@/utils/format'
import { useRoute, useRouter } from "vue-router"
import { ElMessage } from 'element-plus'
import { ref, reactive } from 'vue'
// 图片选择组件
import SelectImage from '@/components/selectImage/selectImage.vue'
// 富文本组件
import RichEdit from '@/components/richtext/rich-edit.vue'


const route = useRoute()
const router = useRouter()

// 提交按钮loading
const btnLoading = ref(false)

const type = ref('')
const formData = ref({
            resumeId: undefined,
            projectName: '',
            role: '',
            startDate: new Date(),
            endDate: new Date(),
            technologies: {},
            description: '',
            achievements: '',
            projectUrl: '',
            screenshots: [],
        })
// 验证规则
const rule = reactive({
               resumeId : [{
                   required: true,
                   message: '请选择简历',
                   trigger: ['input','blur'],
               }],
               projectName : [{
                   required: true,
                   message: '请输入项目名称',
                   trigger: ['input','blur'],
               }],
               role : [{
                   required: true,
                   message: '请输入担任角色',
                   trigger: ['input','blur'],
               }],
               startDate : [{
                   required: true,
                   message: '请选择开始时间',
                   trigger: ['input','blur'],
               }],
})

const elFormRef = ref()
  const dataSource = ref([])
  const getDataSourceFunc = async()=>{
    const res = await getResumeProjectDataSource()
    if (res.code === 0) {
      dataSource.value = res.data
    }
  }
  getDataSourceFunc()

// 初始化方法
const init = async () => {
 // 建议通过url传参获取目标数据ID 调用 find方法进行查询数据操作 从而决定本页面是create还是update 以下为id作为url参数示例
    if (route.query.id) {
      const res = await findResumeProject({ ID: route.query.id })
      if (res.code === 0) {
        formData.value = res.data
        type.value = 'update'
      }
    } else {
      type.value = 'create'
    }
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
               res = await createResumeProject(formData.value)
               break
             case 'update':
               res = await updateResumeProject(formData.value)
               break
             default:
               res = await createResumeProject(formData.value)
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
