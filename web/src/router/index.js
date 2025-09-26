import { createRouter, createWebHashHistory } from 'vue-router'

const routes = [
  {
    path: '/',
    redirect: '/login'
  },
  {
    path: '/init',
    name: 'Init',
    component: () => import('@/view/init/index.vue')
  },
  {
    path: '/login',
    name: 'Login',
    component: () => import('@/view/login/index.vue')
  },
  {
    path: '/scanUpload',
    name: 'ScanUpload',
    meta: {
      title: '扫码上传',
      client: true
    },
    component: () => import('@/view/example/upload/scanUpload.vue')
  },
  {
    path: '/resume/public/:id',
    name: 'ResumePublic',
    meta: {
      title: '简历展示',
      client: true
    },
    component: () => import('@/view/resume/resumePublic.vue')
  },
  {
    path: '/resume/display',
    name: 'ResumeDisplay',
    meta: {
      title: '我的简历',
      requireAuth: true
    },
    component: () => import('@/view/resume/resumeDisplay.vue')
  },
  {
    path: '/:catchAll(.*)',
    meta: {
      closeTab: true
    },
    component: () => import('@/view/error/index.vue')
  },
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
