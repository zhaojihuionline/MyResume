<template>
  <div class="resume-display">
    <!-- 简历选择区域 -->
    <div class="resume-selector" v-if="!selectedResumeId">
      <div class="selector-card">
        <h2 class="selector-title">选择要展示的简历</h2>
        <div class="resume-list">
          <div v-for="resume in resumeList" :key="resume.ID" class="resume-item" @click="selectResume(resume.ID)">
            <div class="resume-avatar">
              <img v-if="resume.avatar" :src="resume.avatar" :alt="resume.name" />
              <div v-else class="avatar-placeholder">{{ resume.name.charAt(0) }}</div>
            </div>
            <div class="resume-info">
              <h3>{{ resume.name }}</h3>
              <p>{{ resume.email }}</p>
              <span class="status-badge" :class="resume.isPublic ? 'public' : 'private'">
                {{ resume.isPublic ? '公开' : '私有' }}
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- 简历展示区域 -->
    <div class="resume-content" v-if="selectedResumeId && resumeData">
      <!-- 操作按钮 -->
      <div class="action-bar">
        <el-button @click="goBack" icon="el-icon-back">返回选择</el-button>
        <el-button @click="toggleTheme" icon="el-icon-magic-stick">
          {{ currentTheme === 'modern' ? '经典主题' : '现代主题' }}
        </el-button>
        <el-button @click="printResume" icon="el-icon-printer" type="primary">打印简历</el-button>
        <el-button @click="shareResume" icon="el-icon-share">分享简历</el-button>
      </div>

      <!-- 简历主体 -->
      <div class="resume-wrapper" :class="currentTheme" id="resumeContent">
        <!-- 现代主题 -->
        <div v-if="currentTheme === 'modern'" class="modern-theme">
          <!-- 头部信息 -->
          <div class="header-section">
            <div class="personal-info">
              <div class="avatar-container">
                <img v-if="resumeData.basicInfo.avatar" :src="resumeData.basicInfo.avatar" alt="头像" />
                <div v-else class="avatar-placeholder-large">{{ resumeData.basicInfo.name.charAt(0) }}</div>
              </div>
              <div class="info-content">
                <h1 class="name">{{ resumeData.basicInfo.name }}</h1>
                <div class="contact-info">
                  <div class="contact-item">
                    <i class="el-icon-phone"></i>
                    <span>{{ resumeData.basicInfo.phone }}</span>
                  </div>
                  <div class="contact-item">
                    <i class="el-icon-message"></i>
                    <span>{{ resumeData.basicInfo.email }}</span>
                  </div>
                  <div class="contact-item" v-if="resumeData.basicInfo.address">
                    <i class="el-icon-location"></i>
                    <span>{{ resumeData.basicInfo.address }}</span>
                  </div>
                </div>
              </div>
            </div>
            <div class="summary-section" v-if="resumeData.basicInfo.summary">
              <h2>个人简介</h2>
              <div class="summary-content" v-html="resumeData.basicInfo.summary"></div>
            </div>
          </div>

          <!-- 技能标签 -->
          <div class="skills-section" v-if="resumeData.basicInfo.skills && resumeData.basicInfo.skills.length">
            <h2>专业技能</h2>
            <div class="skills-container">
              <el-tag v-for="skill in resumeData.basicInfo.skills" :key="skill" class="skill-tag" effect="dark">
                {{ skill }}
              </el-tag>
            </div>
          </div>

          <!-- 工作经历 -->
          <div class="work-section" v-if="resumeData.workExperience && resumeData.workExperience.length">
            <h2>工作经历</h2>
            <div class="timeline">
              <div v-for="work in resumeData.workExperience" :key="work.ID" class="timeline-item">
                <div class="timeline-marker"></div>
                <div class="timeline-content">
                  <div class="work-header">
                    <h3>{{ work.position }}</h3>
                    <span class="company">{{ work.companyName }}</span>
                    <span class="duration">
                      {{ formatDate(work.startDate) }} -
                      {{ work.isCurrent ? '至今' : formatDate(work.endDate) }}
                    </span>
                  </div>
                  <div class="work-description" v-if="work.description" v-html="work.description"></div>
                  <div class="work-achievements" v-if="work.achievements" v-html="work.achievements"></div>
                </div>
              </div>
            </div>
          </div>

          <!-- 项目经验 -->
          <div class="project-section" v-if="resumeData.projects && resumeData.projects.length">
            <h2>项目经验</h2>
            <div class="projects-grid">
              <div v-for="project in resumeData.projects" :key="project.ID" class="project-card">
                <div class="project-header">
                  <h3>{{ project.projectName }}</h3>
                  <span class="role">{{ project.role }}</span>
                  <span class="duration">
                    {{ formatDate(project.startDate) }} -
                    {{ project.endDate ? formatDate(project.endDate) : '至今' }}
                  </span>
                </div>
                <div class="project-tech" v-if="project.technologies && project.technologies.length">
                  <el-tag v-for="tech in project.technologies" :key="tech" size="small" class="tech-tag">
                    {{ tech }}
                  </el-tag>
                </div>
                <div class="project-description" v-if="project.description" v-html="project.description"></div>
                <div class="project-achievements" v-if="project.achievements" v-html="project.achievements"></div>
                <div class="project-url" v-if="project.projectUrl">
                  <a :href="project.projectUrl" target="_blank">
                    <i class="el-icon-link"></i> 查看项目
                  </a>
                </div>
              </div>
            </div>
          </div>

          <!-- 教育背景 -->
          <div class="education-section" v-if="resumeData.education && resumeData.education.length">
            <h2>教育背景</h2>
            <div class="education-list">
              <div v-for="edu in resumeData.education" :key="edu.ID" class="education-item">
                <div class="education-header">
                  <h3>{{ edu.school }}</h3>
                  <span class="degree">{{ edu.degree }}</span>
                  <span class="major">{{ edu.major }}</span>
                  <span class="duration">
                    {{ formatDate(edu.startDate) }} - {{ formatDate(edu.endDate) }}
                  </span>
                </div>
                <div class="education-gpa" v-if="edu.gpa">
                  <span>GPA: {{ edu.gpa }}</span>
                </div>
                <div class="education-description" v-if="edu.description" v-html="edu.description"></div>
              </div>
            </div>
          </div>
        </div>

        <!-- 经典主题 -->
        <div v-if="currentTheme === 'classic'" class="classic-theme">
          <div class="classic-header">
            <div class="personal-section">
              <h1 class="classic-name">{{ resumeData.basicInfo.name }}</h1>
              <div class="classic-contact">
                <span>{{ resumeData.basicInfo.phone }}</span> |
                <span>{{ resumeData.basicInfo.email }}</span>
                <span v-if="resumeData.basicInfo.address"> | {{ resumeData.basicInfo.address }}</span>
              </div>
            </div>
            <div class="classic-avatar" v-if="resumeData.basicInfo.avatar">
              <img :src="resumeData.basicInfo.avatar" alt="头像" />
            </div>
          </div>

          <div class="classic-content">
            <!-- 个人简介 -->
            <div class="classic-section" v-if="resumeData.basicInfo.summary">
              <h2>PROFILE</h2>
              <div class="section-content" v-html="resumeData.basicInfo.summary"></div>
            </div>

            <!-- 工作经历 -->
            <div class="classic-section" v-if="resumeData.workExperience && resumeData.workExperience.length">
              <h2>EXPERIENCE</h2>
              <div class="section-content">
                <div v-for="work in resumeData.workExperience" :key="work.ID" class="classic-work-item">
                  <div class="work-title">
                    <strong>{{ work.position }}</strong> - {{ work.companyName }}
                    <span class="work-date">
                      ({{ formatDate(work.startDate) }} -
                      {{ work.isCurrent ? '至今' : formatDate(work.endDate) }})
                    </span>
                  </div>
                  <div class="work-content" v-if="work.description" v-html="work.description"></div>
                  <div class="work-content" v-if="work.achievements" v-html="work.achievements"></div>
                </div>
              </div>
            </div>

            <!-- 项目经验 -->
            <div class="classic-section" v-if="resumeData.projects && resumeData.projects.length">
              <h2>PROJECTS</h2>
              <div class="section-content">
                <div v-for="project in resumeData.projects" :key="project.ID" class="classic-project-item">
                  <div class="project-title">
                    <strong>{{ project.projectName }}</strong> - {{ project.role }}
                    <span class="project-date">
                      ({{ formatDate(project.startDate) }} -
                      {{ project.endDate ? formatDate(project.endDate) : '至今' }})
                    </span>
                  </div>
                  <div class="project-content" v-if="project.description" v-html="project.description"></div>
                  <div class="project-content" v-if="project.achievements" v-html="project.achievements"></div>
                </div>
              </div>
            </div>

            <!-- 教育背景 -->
            <div class="classic-section" v-if="resumeData.education && resumeData.education.length">
              <h2>EDUCATION</h2>
              <div class="section-content">
                <div v-for="edu in resumeData.education" :key="edu.ID" class="classic-education-item">
                  <div class="education-title">
                    <strong>{{ edu.degree }} in {{ edu.major }}</strong> - {{ edu.school }}
                    <span class="education-date">
                      ({{ formatDate(edu.startDate) }} - {{ formatDate(edu.endDate) }})
                    </span>
                  </div>
                  <div class="education-gpa" v-if="edu.gpa">GPA: {{ edu.gpa }}</div>
                  <div class="education-content" v-if="edu.description" v-html="edu.description"></div>
                </div>
              </div>
            </div>

            <!-- 技能 -->
            <div class="classic-section" v-if="resumeData.basicInfo.skills && resumeData.basicInfo.skills.length">
              <h2>SKILLS</h2>
              <div class="section-content">
                <div class="classic-skills">
                  {{ resumeData.basicInfo.skills.join(' • ') }}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- 分享对话框 -->
    <el-dialog title="分享简历" v-model="shareDialogVisible" width="400px">
      <div class="share-content">
        <p>简历分享链接：</p>
        <el-input v-model="shareUrl" readonly class="share-url">
          <template #append>
            <el-button @click="copyShareUrl" icon="el-icon-document-copy">复制</el-button>
          </template>
        </el-input>
        <p class="share-tip">* 此链接可供招聘方查看您的简历</p>
      </div>
    </el-dialog>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue'
import { ElMessage } from 'element-plus'
import { getResumeBasicInfoList } from '@/api/resume/resumeBasicInfo'
import { getResumeWorkExperienceList } from '@/api/resume/resumeWorkExperience'
import { getResumeEducationList } from '@/api/resume/resumeEducation'
import { getResumeProjectList } from '@/api/resume/resumeProject'

// 响应式数据
const resumeList = ref([])
const selectedResumeId = ref(null)
const resumeData = ref(null)
const currentTheme = ref('modern') // modern, classic
const shareDialogVisible = ref(false)
const shareUrl = ref('')
const loading = ref(false)

// 加载简历列表
const loadResumeList = async () => {
  try {
    const res = await getResumeBasicInfoList({ page: 1, pageSize: 100 })
    if (res.code === 0) {
      resumeList.value = res.data.list || []
    }
  } catch (error) {
    console.error('加载简历列表失败:', error)
    ElMessage.error('加载简历列表失败')
  }
}

// 选择简历
const selectResume = async (resumeId) => {
  selectedResumeId.value = resumeId
  loading.value = true

  try {
    // 并行加载所有相关数据
    const [basicRes, workRes, eduRes, projectRes] = await Promise.all([
      getResumeBasicInfoList({ page: 1, pageSize: 1, ID: resumeId }),
      getResumeWorkExperienceList({ page: 1, pageSize: 100, resumeId }),
      getResumeEducationList({ page: 1, pageSize: 100, resumeId }),
      getResumeProjectList({ page: 1, pageSize: 100, resumeId })
    ])

    resumeData.value = {
      basicInfo: basicRes.data.list[0] || {},
      workExperience: (workRes.data.list || []).sort((a, b) => b.sortOrder - a.sortOrder),
      education: eduRes.data.list || [],
      projects: projectRes.data.list || []
    }

    // 处理技能数据
    if (resumeData.value.basicInfo.skills && typeof resumeData.value.basicInfo.skills === 'string') {
      try {
        resumeData.value.basicInfo.skills = JSON.parse(resumeData.value.basicInfo.skills)
      } catch (e) {
        resumeData.value.basicInfo.skills = []
      }
    }

    // 处理项目技术栈数据
    resumeData.value.projects.forEach(project => {
      if (project.technologies && typeof project.technologies === 'string') {
        try {
          project.technologies = JSON.parse(project.technologies)
        } catch (e) {
          project.technologies = []
        }
      }
    })

  } catch (error) {
    console.error('加载简历数据失败:', error)
    ElMessage.error('加载简历数据失败')
  } finally {
    loading.value = false
  }
}

// 返回选择页面
const goBack = () => {
  selectedResumeId.value = null
  resumeData.value = null
}

// 切换主题
const toggleTheme = () => {
  currentTheme.value = currentTheme.value === 'modern' ? 'classic' : 'modern'
}

// 打印简历
const printResume = () => {
  // 隐藏操作栏
  const actionBar = document.querySelector('.action-bar')
  if (actionBar) {
    actionBar.style.display = 'none'
  }

  // 打印
  window.print()

  // 恢复操作栏
  setTimeout(() => {
    if (actionBar) {
      actionBar.style.display = 'flex'
    }
  }, 1000)
}

// 分享简历
const shareResume = () => {
  shareUrl.value = `${window.location.origin}/resume/public/${selectedResumeId.value}`
  shareDialogVisible.value = true
}

// 复制分享链接
const copyShareUrl = () => {
  navigator.clipboard.writeText(shareUrl.value).then(() => {
    ElMessage.success('链接已复制到剪贴板')
  }).catch(() => {
    ElMessage.error('复制失败，请手动复制')
  })
}

// 格式化日期
const formatDate = (dateString) => {
  if (!dateString) return ''
  const date = new Date(dateString)
  return `${date.getFullYear()}.${String(date.getMonth() + 1).padStart(2, '0')}`
}

// 生命周期钩子
onMounted(() => {
  loadResumeList()
})
</script>

<style lang="scss" scoped>
.resume-display {
  min-height: 100vh;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}

// 简历选择区域样式
.resume-selector {
  padding: 60px 20px;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
}

.selector-card {
  background: white;
  border-radius: 20px;
  padding: 40px;
  box-shadow: 0 20px 60px rgba(0, 0, 0, 0.1);
  max-width: 800px;
  width: 100%;
}

.selector-title {
  text-align: center;
  font-size: 28px;
  color: #2c3e50;
  margin-bottom: 30px;
  font-weight: 600;
}

.resume-list {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: 20px;
}

.resume-item {
  display: flex;
  align-items: center;
  padding: 20px;
  border: 2px solid #e1e8ed;
  border-radius: 12px;
  cursor: pointer;
  transition: all 0.3s ease;

  &:hover {
    border-color: #667eea;
    transform: translateY(-2px);
    box-shadow: 0 8px 25px rgba(102, 126, 234, 0.15);
  }
}

.resume-avatar {
  width: 60px;
  height: 60px;
  border-radius: 50%;
  overflow: hidden;
  margin-right: 15px;

  img {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
}

.avatar-placeholder {
  width: 100%;
  height: 100%;
  background: linear-gradient(45deg, #667eea, #764ba2);
  display: flex;
  align-items: center;
  justify-content: center;
  color: white;
  font-size: 24px;
  font-weight: bold;
}

.resume-info {
  flex: 1;

  h3 {
    margin: 0 0 5px 0;
    font-size: 18px;
    color: #2c3e50;
  }

  p {
    margin: 0 0 8px 0;
    color: #7f8c8d;
    font-size: 14px;
  }
}

.status-badge {
  padding: 4px 12px;
  border-radius: 15px;
  font-size: 12px;
  font-weight: 500;

  &.public {
    background: #e8f5e8;
    color: #27ae60;
  }

  &.private {
    background: #fef2e8;
    color: #f39c12;
  }
}

// 简历内容区域样式
.resume-content {
  background: #f8f9fa;
  min-height: 100vh;
}

.action-bar {
  background: white;
  padding: 15px 30px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
  position: sticky;
  top: 0;
  z-index: 100;

  @media print {
    display: none !important;
  }
}

.resume-wrapper {
  max-width: 1000px;
  margin: 0 auto;
  padding: 40px 20px;
}

// 现代主题样式
.modern-theme {
  background: white;
  border-radius: 15px;
  overflow: hidden;
  box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
}

.header-section {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  padding: 40px;
}

.personal-info {
  display: flex;
  align-items: center;
  margin-bottom: 30px;
}

.avatar-container {
  width: 120px;
  height: 120px;
  border-radius: 50%;
  overflow: hidden;
  margin-right: 30px;
  border: 4px solid rgba(255, 255, 255, 0.3);

  img {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
}

.avatar-placeholder-large {
  width: 100%;
  height: 100%;
  background: rgba(255, 255, 255, 0.2);
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 48px;
  font-weight: bold;
}

.info-content {
  flex: 1;
}

.name {
  font-size: 36px;
  margin: 0 0 20px 0;
  font-weight: 700;
}

.contact-info {
  display: flex;
  flex-wrap: wrap;
  gap: 20px;
}

.contact-item {
  display: flex;
  align-items: center;
  font-size: 16px;

  i {
    margin-right: 8px;
    font-size: 18px;
  }
}

.summary-section {
  h2 {
    font-size: 24px;
    margin: 0 0 15px 0;
    opacity: 0.9;
  }

  .summary-content {
    font-size: 16px;
    line-height: 1.6;
    opacity: 0.95;
  }
}

.skills-section,
.work-section,
.project-section,
.education-section {
  padding: 40px;

  h2 {
    font-size: 28px;
    color: #2c3e50;
    margin: 0 0 30px 0;
    position: relative;

    &::after {
      content: '';
      position: absolute;
      bottom: -10px;
      left: 0;
      width: 50px;
      height: 3px;
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      border-radius: 2px;
    }
  }
}

.skills-container {
  display: flex;
  flex-wrap: wrap;
  gap: 12px;
}

.skill-tag {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  border: none;
  font-size: 14px;
  padding: 8px 16px;
  border-radius: 20px;
}

// 时间线样式
.timeline {
  position: relative;

  &::before {
    content: '';
    position: absolute;
    left: 20px;
    top: 0;
    bottom: 0;
    width: 2px;
    background: linear-gradient(to bottom, #667eea, #764ba2);
  }
}

.timeline-item {
  position: relative;
  padding-left: 60px;
  margin-bottom: 40px;

  &:last-child {
    margin-bottom: 0;
  }
}

.timeline-marker {
  position: absolute;
  left: 11px;
  top: 8px;
  width: 18px;
  height: 18px;
  border-radius: 50%;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  border: 3px solid white;
  box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.2);
}

.timeline-content {
  background: #f8f9fa;
  padding: 25px;
  border-radius: 12px;
  border-left: 4px solid #667eea;
}

.work-header {
  margin-bottom: 15px;

  h3 {
    font-size: 20px;
    color: #2c3e50;
    margin: 0 0 5px 0;
  }

  .company {
    color: #667eea;
    font-weight: 600;
    font-size: 16px;
    margin-right: 15px;
  }

  .duration {
    color: #7f8c8d;
    font-size: 14px;
  }
}

.work-description,
.work-achievements {
  margin-top: 12px;
  line-height: 1.6;
  color: #5a6c7d;
}

// 项目网格样式
.projects-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(400px, 1fr));
  gap: 25px;
}

.project-card {
  background: white;
  border-radius: 12px;
  padding: 25px;
  box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
  border: 1px solid #e9ecef;
  transition: transform 0.3s ease, box-shadow 0.3s ease;

  &:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
  }
}

.project-header {
  margin-bottom: 15px;

  h3 {
    font-size: 18px;
    color: #2c3e50;
    margin: 0 0 5px 0;
  }

  .role {
    color: #667eea;
    font-weight: 500;
    margin-right: 15px;
  }

  .duration {
    color: #7f8c8d;
    font-size: 14px;
  }
}

.project-tech {
  margin: 12px 0;
}

.tech-tag {
  background: #e3f2fd;
  color: #1976d2;
  border: 1px solid #bbdefb;
  margin-right: 8px;
  margin-bottom: 5px;
}

.project-description,
.project-achievements {
  margin: 12px 0;
  line-height: 1.6;
  color: #5a6c7d;
}

.project-url {
  margin-top: 15px;

  a {
    color: #667eea;
    text-decoration: none;
    font-weight: 500;

    &:hover {
      text-decoration: underline;
    }

    i {
      margin-right: 5px;
    }
  }
}

// 教育背景样式
.education-list {
  display: flex;
  flex-direction: column;
  gap: 25px;
}

.education-item {
  background: white;
  padding: 25px;
  border-radius: 12px;
  box-shadow: 0 3px 15px rgba(0, 0, 0, 0.08);
  border-left: 4px solid #667eea;
}

.education-header {
  margin-bottom: 12px;

  h3 {
    font-size: 18px;
    color: #2c3e50;
    margin: 0 0 5px 0;
  }

  .degree,
  .major {
    color: #667eea;
    font-weight: 500;
    margin-right: 15px;
  }

  .duration {
    color: #7f8c8d;
    font-size: 14px;
  }
}

.education-gpa {
  color: #27ae60;
  font-weight: 500;
  margin-bottom: 10px;
}

.education-description {
  line-height: 1.6;
  color: #5a6c7d;
}

// 经典主题样式
.classic-theme {
  background: white;
  padding: 40px;
  font-family: 'Times New Roman', serif;
  line-height: 1.6;
}

.classic-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  border-bottom: 2px solid #2c3e50;
  padding-bottom: 20px;
  margin-bottom: 30px;
}

.personal-section {
  flex: 1;
}

.classic-name {
  font-size: 32px;
  color: #2c3e50;
  margin: 0 0 10px 0;
  font-weight: bold;
  letter-spacing: 1px;
}

.classic-contact {
  font-size: 14px;
  color: #5a6c7d;
}

.classic-avatar {
  width: 100px;
  height: 100px;
  border-radius: 8px;
  overflow: hidden;

  img {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
}

.classic-section {
  margin-bottom: 25px;

  h2 {
    font-size: 18px;
    color: #2c3e50;
    font-weight: bold;
    letter-spacing: 2px;
    margin: 0 0 15px 0;
    text-transform: uppercase;
    border-bottom: 1px solid #bdc3c7;
    padding-bottom: 5px;
  }
}

.section-content {
  padding-left: 20px;
}

.classic-work-item,
.classic-project-item,
.classic-education-item {
  margin-bottom: 20px;

  &:last-child {
    margin-bottom: 0;
  }
}

.work-title,
.project-title,
.education-title {
  font-size: 16px;
  margin-bottom: 8px;

  .work-date,
  .project-date,
  .education-date {
    float: right;
    color: #7f8c8d;
    font-size: 14px;
  }
}

.work-content,
.project-content,
.education-content {
  margin-top: 8px;
  color: #5a6c7d;
  font-size: 14px;
}

.classic-skills {
  font-size: 14px;
  color: #5a6c7d;
}

// 分享对话框样式
.share-content {
  text-align: center;

  p {
    margin-bottom: 15px;
    color: #5a6c7d;
  }
}

.share-url {
  margin-bottom: 15px;
}

.share-tip {
  font-size: 12px;
  color: #95a5a6;
}

// 打印样式
@media print {
  .resume-display {
    background: white !important;
  }

  .resume-content {
    background: white !important;
  }

  .resume-wrapper {
    max-width: none !important;
    padding: 0 !important;
    box-shadow: none !important;
  }

  .modern-theme,
  .classic-theme {
    box-shadow: none !important;
  }

  .action-bar {
    display: none !important;
  }

  .project-card:hover {
    transform: none !important;
  }
}

// 响应式设计
@media (max-width: 768px) {
  .personal-info {
    flex-direction: column;
    text-align: center;

    .avatar-container {
      margin-right: 0;
      margin-bottom: 20px;
    }
  }

  .contact-info {
    justify-content: center;
  }

  .projects-grid {
    grid-template-columns: 1fr;
  }

  .classic-header {
    flex-direction: column;
    text-align: center;

    .classic-avatar {
      margin-top: 20px;
      align-self: center;
    }
  }

  .work-title,
  .project-title,
  .education-title {

    .work-date,
    .project-date,
    .education-date {
      float: none;
      display: block;
      margin-top: 5px;
    }
  }
}
</style>
