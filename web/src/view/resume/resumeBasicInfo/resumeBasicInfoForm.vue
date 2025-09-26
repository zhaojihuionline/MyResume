
<template>
  <div>
    <div class="gva-form-box">
      <el-form :model="formData" ref="elFormRef" label-position="right" :rules="rule" label-width="80px">
        <el-form-item label="姓名:" prop="name">
    <el-input v-model="formData.name" :clearable="true" placeholder="请输入姓名" />
</el-form-item>
        <el-form-item label="头像:" prop="avatar">
    <SelectImage
     v-model="formData.avatar"
     file-type="image"
    />
</el-form-item>
        <el-form-item label="联系电话:" prop="phone">
    <el-input v-model="formData.phone" :clearable="true" placeholder="请输入联系电话" />
</el-form-item>
        <el-form-item label="邮箱:" prop="email">
    <el-input v-model="formData.email" :clearable="true" placeholder="请输入邮箱" />
</el-form-item>
        <el-form-item label="地址:" prop="address">
    <el-input v-model="formData.address" :clearable="true" placeholder="请输入地址" />
</el-form-item>
        <el-form-item label="个人简介:" prop="summary">
    <RichEdit v-model="formData.summary"/>
</el-form-item>
        <el-form-item label="技能标签:" prop="skills">
    // 此字段为json结构，可以前端自行控制展示和数据绑定模式 需绑定json的key为 formData.skills 后端会按照json的类型进行存取
    {{ formData.skills }}
</el-form-item>
        <el-form-item label="是否公开:" prop="isPublic">
    <el-switch v-model="formData.isPublic" active-color="#13ce66" inactive-color="#ff4949" active-text="是" inactive-text="否" clearable ></el-switch>
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
  createResumeBasicInfo,
  updateResumeBasicInfo,
  findResumeBasicInfo
} from '@/api/resume/resumeBasicInfo'

defineOptions({
    name: 'ResumeBasicInfoForm'
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
const resumePublicStatusOptions = ref([])
const formData = ref({
            name: '',
            avatar: "",
            phone: '',
            email: '',
            address: '',
            summary: '',
            skills: {},
            isPublic: false,
        })
// 验证规则
const rule = reactive({
               name : [{
                   required: true,
                   message: '请输入姓名',
                   trigger: ['input','blur'],
               }],
               phone : [{
                   required: true,
                   message: '请输入联系电话',
                   trigger: ['input','blur'],
               }],
               email : [{
                   required: true,
                   message: '请输入邮箱',
                   trigger: ['input','blur'],
               }],
})

const elFormRef = ref()

// 初始化方法
const init = async () => {
 // 建议通过url传参获取目标数据ID 调用 find方法进行查询数据操作 从而决定本页面是create还是update 以下为id作为url参数示例
    if (route.query.id) {
      const res = await findResumeBasicInfo({ ID: route.query.id })
      if (res.code === 0) {
        formData.value = res.data
        type.value = 'update'
      }
    } else {
      type.value = 'create'
    }
    resumePublicStatusOptions.value = await getDictFunc('resume_public_status')
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
               res = await createResumeBasicInfo(formData.value)
               break
             case 'update':
               res = await updateResumeBasicInfo(formData.value)
               break
             default:
               res = await createResumeBasicInfo(formData.value)
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
