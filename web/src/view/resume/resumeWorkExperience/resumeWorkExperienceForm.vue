
<template>
  <div>
    <div class="gva-form-box">
      <el-form :model="formData" ref="elFormRef" label-position="right" :rules="rule" label-width="80px">
        <el-form-item label="简历ID:" prop="resumeId">
    <el-select v-model="formData.resumeId" placeholder="请选择简历ID" filterable style="width:100%" :clearable="true">
        <el-option v-for="(item,key) in dataSource.resumeId" :key="key" :label="item.label" :value="item.value" />
    </el-select>
</el-form-item>
        <el-form-item label="公司名称:" prop="companyName">
    <el-input v-model="formData.companyName" :clearable="true" placeholder="请输入公司名称" />
</el-form-item>
        <el-form-item label="职位:" prop="position">
    <el-input v-model="formData.position" :clearable="true" placeholder="请输入职位" />
</el-form-item>
        <el-form-item label="开始时间:" prop="startDate">
    <el-date-picker v-model="formData.startDate" type="date" style="width:100%" placeholder="选择日期" :clearable="true" />
</el-form-item>
        <el-form-item label="结束时间:" prop="endDate">
    <el-date-picker v-model="formData.endDate" type="date" style="width:100%" placeholder="选择日期" :clearable="true" />
</el-form-item>
        <el-form-item label="是否当前工作:" prop="isCurrent">
    <el-switch v-model="formData.isCurrent" active-color="#13ce66" inactive-color="#ff4949" active-text="是" inactive-text="否" clearable ></el-switch>
</el-form-item>
        <el-form-item label="工作描述:" prop="description">
    <RichEdit v-model="formData.description"/>
</el-form-item>
        <el-form-item label="主要成就:" prop="achievements">
    <RichEdit v-model="formData.achievements"/>
</el-form-item>
        <el-form-item label="排序:" prop="sortOrder">
    <el-input v-model.number="formData.sortOrder" :clearable="true" placeholder="请输入排序" />
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
    getResumeWorkExperienceDataSource,
  createResumeWorkExperience,
  updateResumeWorkExperience,
  findResumeWorkExperience
} from '@/api/resume/resumeWorkExperience'

defineOptions({
    name: 'ResumeWorkExperienceForm'
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
const resumeCurrentStatusOptions = ref([])
const formData = ref({
            resumeId: undefined,
            companyName: '',
            position: '',
            startDate: new Date(),
            endDate: new Date(),
            isCurrent: false,
            description: '',
            achievements: '',
            sortOrder: 0,
        })
// 验证规则
const rule = reactive({
               resumeId : [{
                   required: true,
                   message: '请选择简历',
                   trigger: ['input','blur'],
               }],
               companyName : [{
                   required: true,
                   message: '请输入公司名称',
                   trigger: ['input','blur'],
               }],
               position : [{
                   required: true,
                   message: '请输入职位',
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
    const res = await getResumeWorkExperienceDataSource()
    if (res.code === 0) {
      dataSource.value = res.data
    }
  }
  getDataSourceFunc()

// 初始化方法
const init = async () => {
 // 建议通过url传参获取目标数据ID 调用 find方法进行查询数据操作 从而决定本页面是create还是update 以下为id作为url参数示例
    if (route.query.id) {
      const res = await findResumeWorkExperience({ ID: route.query.id })
      if (res.code === 0) {
        formData.value = res.data
        type.value = 'update'
      }
    } else {
      type.value = 'create'
    }
    resumeCurrentStatusOptions.value = await getDictFunc('resume_current_status')
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
               res = await createResumeWorkExperience(formData.value)
               break
             case 'update':
               res = await updateResumeWorkExperience(formData.value)
               break
             default:
               res = await createResumeWorkExperience(formData.value)
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
