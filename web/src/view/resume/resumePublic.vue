<template>
  <div class="resume-public">
    <div v-if="loading" class="loading-container">
      <div class="loading-spinner">
        <i class="el-icon-loading"></i>
        <p>正在加载简历...</p>
      </div>
    </div>
    
    <div v-else-if="error" class="error-container">
      <div class="error-content">
        <i class="el-icon-warning-outline"></i>
        <h2>简历不存在或已设为私有</h2>
        <p>{{ error }}</p>
      </div>
    </div>
    
    <div v-else-if="resumeData" class="resume-container">
      <!-- 操作栏 -->
      <div class="public-action-bar">
        <div class="left-actions">
          <h1 class="page-title">{{ resumeData.basicInfo.name }}的简历</h1>
        </div>
        <div class="right-actions">
          <el-button @click="printResume" icon="el-icon-printer" type="primary">打印简历</el-button>
          <el-button @click="downloadPDF" icon="el-icon-download">下载PDF</el-button>
        </div>
      </div>

      <!-- 简历内容 -->
      <div class="resume-wrapper" id="resumeContent">
        <!-- 头部信息 -->
        <div class="header-section">
          <div class="personal-info">
            <div class="avatar-container">
              <img v-if="resumeData.basicInfo.avatar" :src="resumeData.basicInfo.avatar" alt="头像" />
              <div v-else class="avatar-placeholder">{{ resumeData.basicInfo.name.charAt(0) }}</div>
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
            <div 
              v-for="skill in resumeData.basicInfo.skills" 
              :key="skill"
              class="skill-tag"
            >
              {{ skill }}
            </div>
          </div>
        </div>

        <!-- 工作经历 -->
        <div class="work-section" v-if="resumeData.workExperience && resumeData.workExperience.length">
          <h2>工作经历</h2>
          <div class="timeline">
            <div 
              v-for="work in resumeData.workExperience" 
              :key="work.ID"
              class="timeline-item"
            >
              <div class="timeline-marker"></div>
              <div class="timeline-content">
                <div class="work-header">
                  <h3>{{ work.position }}</h3>
                  <div class="work-meta">
                    <span class="company">{{ work.companyName }}</span>
                    <span class="duration">
                      {{ formatDate(work.startDate) }} - 
                      {{ work.isCurrent ? '至今' : formatDate(work.endDate) }}
                    </span>
                  </div>
                </div>
                <div class="work-description" v-if="work.description" v-html="work.description"></div>
                <div class="work-achievements" v-if="work.achievements">
                  <h4>主要成就</h4>
                  <div v-html="work.achievements"></div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- 项目经验 -->
        <div class="project-section" v-if="resumeData.projects && resumeData.projects.length">
          <h2>项目经验</h2>
          <div class="projects-grid">
            <div 
              v-for="project in resumeData.projects" 
              :key="project.ID"
              class="project-card"
            >
              <div class="project-header">
                <h3>{{ project.projectName }}</h3>
                <div class="project-meta">
                  <span class="role">{{ project.role }}</span>
                  <span class="duration">
                    {{ formatDate(project.startDate) }} - 
                    {{ project.endDate ? formatDate(project.endDate) : '至今' }}
                  </span>
                </div>
              </div>
              <div class="project-tech" v-if="project.technologies && project.technologies.length">
                <h4>技术栈</h4>
                <div class="tech-list">
                  <span 
                    v-for="tech in project.technologies" 
                    :key="tech"
                    class="tech-tag"
                  >
                    {{ tech }}
                  </span>
                </div>
              </div>
              <div class="project-description" v-if="project.description">
                <h4>项目描述</h4>
                <div v-html="project.description"></div>
              </div>
              <div class="project-achievements" v-if="project.achievements">
                <h4>项目成果</h4>
                <div v-html="project.achievements"></div>
              </div>
              <div class="project-url" v-if="project.projectUrl">
                <a :href="project.projectUrl" target="_blank" class="project-link">
                  <i class="el-icon-link"></i> 查看项目
                </a>
              </div>
              <div class="project-screenshots" v-if="project.screenshots && project.screenshots.length">
                <h4>项目截图</h4>
                <div class="screenshots-gallery">
                  <img 
                    v-for="(screenshot, index) in project.screenshots" 
                    :key="index"
                    :src="screenshot"
                    :alt="`${project.projectName}截图${index + 1}`"
                    class="screenshot-img"
                    @click="previewImage(screenshot)"
                  />
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- 教育背景 -->
        <div class="education-section" v-if="resumeData.education && resumeData.education.length">
          <h2>教育背景</h2>
          <div class="education-list">
            <div 
              v-for="edu in resumeData.education" 
              :key="edu.ID"
              class="education-item"
            >
              <div class="education-header">
                <h3>{{ edu.school }}</h3>
                <div class="education-meta">
                  <span class="degree">{{ edu.degree }}</span>
                  <span class="major">{{ edu.major }}</span>
                  <span class="duration">
                    {{ formatDate(edu.startDate) }} - {{ formatDate(edu.endDate) }}
                  </span>
                </div>
              </div>
              <div class="education-gpa" v-if="edu.gpa">
                <span class="gpa-label">GPA:</span>
                <span class="gpa-value">{{ edu.gpa }}</span>
              </div>
              <div class="education-description" v-if="edu.description" v-html="edu.description"></div>
            </div>
          </div>
        </div>

        <!-- 页脚信息 -->
        <div class="footer-section">
          <div class="footer-content">
            <p>此简历由 MyResume 系统生成</p>
            <p class="update-time">最后更新时间：{{ formatDateTime(resumeData.basicInfo.UpdatedAt) }}</p>
          </div>
        </div>
      </div>
    </div>

    <!-- 图片预览对话框 -->
    <el-dialog v-model="imagePreviewVisible" width="80%" center>
      <img :src="previewImageSrc" style="width: 100%;" alt="预览图片" />
    </el-dialog>
  </div>
</template>

<script>
import { getResumeBasicInfoList } from '@/api/resume/resumeBasicInfo'
import { getResumeWorkExperienceList } from '@/api/resume/resumeWorkExperience'
import { getResumeEducationList } from '@/api/resume/resumeEducation'
import { getResumeProjectList } from '@/api/resume/resumeProject'

export default {
  name: 'ResumePublic',
  data() {
    return {
      resumeId: null,
      resumeData: null,
      loading: true,
      error: null,
      imagePreviewVisible: false,
      previewImageSrc: ''
    }
  },
  mounted() {
    this.resumeId = this.$route.params.id
    if (this.resumeId) {
      this.loadResumeData()
    } else {
      this.error = '无效的简历链接'
      this.loading = false
    }
  },
  methods: {
    async loadResumeData() {
      try {
        // 先获取基本信息并检查是否公开
        const basicRes = await getResumeBasicInfoList({ 
          page: 1, 
          pageSize: 1, 
          ID: this.resumeId 
        })
        
        if (!basicRes.data.list || basicRes.data.list.length === 0) {
          this.error = '简历不存在'
          this.loading = false
          return
        }
        
        const basicInfo = basicRes.data.list[0]
        if (!basicInfo.isPublic) {
          this.error = '此简历已设为私有，无法公开访问'
          this.loading = false
          return
        }
        
        // 并行加载所有相关数据
        const [workRes, eduRes, projectRes] = await Promise.all([
          getResumeWorkExperienceList({ page: 1, pageSize: 100, resumeId: this.resumeId }),
          getResumeEducationList({ page: 1, pageSize: 100, resumeId: this.resumeId }),
          getResumeProjectList({ page: 1, pageSize: 100, resumeId: this.resumeId })
        ])
        
        this.resumeData = {
          basicInfo,
          workExperience: (workRes.data.list || []).sort((a, b) => b.sortOrder - a.sortOrder),
          education: eduRes.data.list || [],
          projects: projectRes.data.list || []
        }
        
        // 处理技能数据
        if (this.resumeData.basicInfo.skills && typeof this.resumeData.basicInfo.skills === 'string') {
          try {
            this.resumeData.basicInfo.skills = JSON.parse(this.resumeData.basicInfo.skills)
          } catch (e) {
            this.resumeData.basicInfo.skills = []
          }
        }
        
        // 处理项目技术栈和截图数据
        this.resumeData.projects.forEach(project => {
          if (project.technologies && typeof project.technologies === 'string') {
            try {
              project.technologies = JSON.parse(project.technologies)
            } catch (e) {
              project.technologies = []
            }
          }
          
          if (project.screenshots && typeof project.screenshots === 'string') {
            try {
              project.screenshots = JSON.parse(project.screenshots)
            } catch (e) {
              project.screenshots = []
            }
          }
        })
        
        // 设置页面标题
        document.title = `${basicInfo.name}的简历 - MyResume`
        
      } catch (error) {
        console.error('加载简历数据失败:', error)
        this.error = '加载简历数据失败，请稍后再试'
      } finally {
        this.loading = false
      }
    },
    
    printResume() {
      // 隐藏操作栏
      const actionBar = document.querySelector('.public-action-bar')
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
    },
    
    downloadPDF() {
      // 这里可以集成PDF生成库，如jsPDF
      this.$message.info('PDF下载功能开发中...')
    },
    
    previewImage(src) {
      this.previewImageSrc = src
      this.imagePreviewVisible = true
    },
    
    formatDate(dateString) {
      if (!dateString) return ''
      const date = new Date(dateString)
      return `${date.getFullYear()}.${String(date.getMonth() + 1).padStart(2, '0')}`
    },
    
    formatDateTime(dateString) {
      if (!dateString) return ''
      const date = new Date(dateString)
      return `${date.getFullYear()}-${String(date.getMonth() + 1).padStart(2, '0')}-${String(date.getDate()).padStart(2, '0')} ${String(date.getHours()).padStart(2, '0')}:${String(date.getMinutes()).padStart(2, '0')}`
    }
  }
}
</script>

<style lang="scss" scoped>
.resume-public {
  min-height: 100vh;
  background: #f8f9fa;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
}

// 加载状态
.loading-container {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}

.loading-spinner {
  text-align: center;
  color: white;
  
  i {
    font-size: 48px;
    margin-bottom: 20px;
    display: block;
  }
  
  p {
    font-size: 18px;
    margin: 0;
  }
}

// 错误状态
.error-container {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  background: #f8f9fa;
}

.error-content {
  text-align: center;
  padding: 60px;
  background: white;
  border-radius: 20px;
  box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
  max-width: 500px;
  
  i {
    font-size: 64px;
    color: #e74c3c;
    margin-bottom: 20px;
    display: block;
  }
  
  h2 {
    color: #2c3e50;
    margin: 0 0 15px 0;
    font-size: 24px;
  }
  
  p {
    color: #7f8c8d;
    margin: 0;
    font-size: 16px;
  }
}

// 简历容器
.resume-container {
  max-width: 1000px;
  margin: 0 auto;
  background: white;
  box-shadow: 0 0 30px rgba(0, 0, 0, 0.1);
}

// 公开操作栏
.public-action-bar {
  background: white;
  padding: 20px 40px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  border-bottom: 1px solid #e9ecef;
  position: sticky;
  top: 0;
  z-index: 100;
  
  @media print {
    display: none !important;
  }
}

.left-actions {
  .page-title {
    margin: 0;
    font-size: 24px;
    color: #2c3e50;
    font-weight: 600;
  }
}

.right-actions {
  display: flex;
  gap: 12px;
}

// 简历内容
.resume-wrapper {
  padding: 0;
}

// 头部区域
.header-section {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  padding: 60px 40px;
}

.personal-info {
  display: flex;
  align-items: center;
  margin-bottom: 40px;
}

.avatar-container {
  width: 140px;
  height: 140px;
  border-radius: 50%;
  overflow: hidden;
  margin-right: 40px;
  border: 5px solid rgba(255, 255, 255, 0.3);
  flex-shrink: 0;
  
  img {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
}

.avatar-placeholder {
  width: 100%;
  height: 100%;
  background: rgba(255, 255, 255, 0.2);
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 56px;
  font-weight: bold;
}

.info-content {
  flex: 1;
}

.name {
  font-size: 42px;
  margin: 0 0 25px 0;
  font-weight: 700;
  text-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.contact-info {
  display: flex;
  flex-wrap: wrap;
  gap: 30px;
}

.contact-item {
  display: flex;
  align-items: center;
  font-size: 18px;
  
  i {
    margin-right: 10px;
    font-size: 20px;
    opacity: 0.9;
  }
}

.summary-section {
  h2 {
    font-size: 28px;
    margin: 0 0 20px 0;
    opacity: 0.95;
    font-weight: 600;
  }
  
  .summary-content {
    font-size: 18px;
    line-height: 1.7;
    opacity: 0.95;
  }
}

// 内容区域通用样式
.skills-section, .work-section, .project-section, .education-section {
  padding: 50px 40px;
  border-bottom: 1px solid #e9ecef;
  
  &:last-of-type {
    border-bottom: none;
  }
  
  h2 {
    font-size: 32px;
    color: #2c3e50;
    margin: 0 0 35px 0;
    position: relative;
    font-weight: 700;
    
    &::after {
      content: '';
      position: absolute;
      bottom: -12px;
      left: 0;
      width: 60px;
      height: 4px;
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      border-radius: 2px;
    }
  }
}

// 技能区域
.skills-container {
  display: flex;
  flex-wrap: wrap;
  gap: 15px;
}

.skill-tag {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  padding: 12px 24px;
  border-radius: 25px;
  font-size: 16px;
  font-weight: 500;
  box-shadow: 0 4px 15px rgba(102, 126, 234, 0.3);
  transition: transform 0.2s ease;
  
  &:hover {
    transform: translateY(-2px);
  }
}

// 时间线样式
.timeline {
  position: relative;
  
  &::before {
    content: '';
    position: absolute;
    left: 25px;
    top: 0;
    bottom: 0;
    width: 3px;
    background: linear-gradient(to bottom, #667eea, #764ba2);
    border-radius: 2px;
  }
}

.timeline-item {
  position: relative;
  padding-left: 80px;
  margin-bottom: 50px;
  
  &:last-child {
    margin-bottom: 0;
  }
}

.timeline-marker {
  position: absolute;
  left: 14px;
  top: 12px;
  width: 22px;
  height: 22px;
  border-radius: 50%;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  border: 4px solid white;
  box-shadow: 0 0 0 4px rgba(102, 126, 234, 0.2);
}

.timeline-content {
  background: #f8f9fa;
  padding: 30px;
  border-radius: 15px;
  border-left: 5px solid #667eea;
  box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
}

.work-header {
  margin-bottom: 20px;
  
  h3 {
    font-size: 24px;
    color: #2c3e50;
    margin: 0 0 8px 0;
    font-weight: 600;
  }
}

.work-meta {
  display: flex;
  flex-wrap: wrap;
  gap: 20px;
  
  .company {
    color: #667eea;
    font-weight: 600;
    font-size: 18px;
  }
  
  .duration {
    color: #7f8c8d;
    font-size: 16px;
  }
}

.work-description, .work-achievements {
  margin-top: 15px;
  line-height: 1.7;
  color: #5a6c7d;
  font-size: 16px;
  
  h4 {
    color: #2c3e50;
    margin: 0 0 10px 0;
    font-size: 18px;
    font-weight: 600;
  }
}

// 项目区域
.projects-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(450px, 1fr));
  gap: 30px;
}

.project-card {
  background: white;
  border-radius: 15px;
  padding: 30px;
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
  border: 1px solid #e9ecef;
  transition: all 0.3s ease;
  
  &:hover {
    transform: translateY(-8px);
    box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
  }
}

.project-header {
  margin-bottom: 20px;
  
  h3 {
    font-size: 22px;
    color: #2c3e50;
    margin: 0 0 8px 0;
    font-weight: 600;
  }
}

.project-meta {
  display: flex;
  flex-wrap: wrap;
  gap: 15px;
  
  .role {
    color: #667eea;
    font-weight: 600;
    font-size: 16px;
  }
  
  .duration {
    color: #7f8c8d;
    font-size: 16px;
  }
}

.project-tech, .project-description, .project-achievements {
  margin: 20px 0;
  
  h4 {
    color: #2c3e50;
    margin: 0 0 12px 0;
    font-size: 18px;
    font-weight: 600;
  }
}

.tech-list {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
}

.tech-tag {
  background: #e3f2fd;
  color: #1976d2;
  padding: 6px 12px;
  border-radius: 15px;
  font-size: 14px;
  font-weight: 500;
  border: 1px solid #bbdefb;
}

.project-description, .project-achievements {
  line-height: 1.7;
  color: #5a6c7d;
  font-size: 16px;
}

.project-link {
  color: #667eea;
  text-decoration: none;
  font-weight: 600;
  font-size: 16px;
  display: inline-flex;
  align-items: center;
  
  &:hover {
    text-decoration: underline;
  }
  
  i {
    margin-right: 6px;
  }
}

.screenshots-gallery {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
  gap: 15px;
  margin-top: 12px;
}

.screenshot-img {
  width: 100%;
  height: 120px;
  object-fit: cover;
  border-radius: 8px;
  cursor: pointer;
  transition: transform 0.2s ease;
  border: 1px solid #e9ecef;
  
  &:hover {
    transform: scale(1.05);
  }
}

// 教育区域
.education-list {
  display: flex;
  flex-direction: column;
  gap: 30px;
}

.education-item {
  background: white;
  padding: 30px;
  border-radius: 15px;
  box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
  border-left: 5px solid #667eea;
}

.education-header {
  margin-bottom: 15px;
  
  h3 {
    font-size: 22px;
    color: #2c3e50;
    margin: 0 0 8px 0;
    font-weight: 600;
  }
}

.education-meta {
  display: flex;
  flex-wrap: wrap;
  gap: 15px;
  
  .degree, .major {
    color: #667eea;
    font-weight: 600;
    font-size: 16px;
  }
  
  .duration {
    color: #7f8c8d;
    font-size: 16px;
  }
}

.education-gpa {
  margin: 12px 0;
  
  .gpa-label {
    color: #2c3e50;
    font-weight: 600;
    margin-right: 8px;
  }
  
  .gpa-value {
    color: #27ae60;
    font-weight: 600;
    font-size: 18px;
  }
}

.education-description {
  line-height: 1.7;
  color: #5a6c7d;
  font-size: 16px;
}

// 页脚
.footer-section {
  background: #2c3e50;
  color: white;
  padding: 30px 40px;
  text-align: center;
}

.footer-content {
  p {
    margin: 0 0 8px 0;
    font-size: 16px;
    
    &:last-child {
      margin: 0;
    }
  }
}

.update-time {
  opacity: 0.8;
  font-size: 14px;
}

// 打印样式
@media print {
  .resume-public {
    background: white !important;
  }
  
  .resume-container {
    box-shadow: none !important;
    max-width: none !important;
  }
  
  .public-action-bar {
    display: none !important;
  }
  
  .project-card:hover {
    transform: none !important;
  }
  
  .footer-section {
    background: #f8f9fa !important;
    color: #2c3e50 !important;
    border-top: 1px solid #e9ecef !important;
  }
}

// 响应式设计
@media (max-width: 768px) {
  .header-section {
    padding: 40px 20px;
  }
  
  .personal-info {
    flex-direction: column;
    text-align: center;
    
    .avatar-container {
      margin-right: 0;
      margin-bottom: 25px;
    }
  }
  
  .contact-info {
    justify-content: center;
    flex-direction: column;
    gap: 15px;
  }
  
  .name {
    font-size: 32px;
  }
  
  .skills-section, .work-section, .project-section, .education-section {
    padding: 30px 20px;
    
    h2 {
      font-size: 26px;
    }
  }
  
  .projects-grid {
    grid-template-columns: 1fr;
  }
  
  .public-action-bar {
    padding: 15px 20px;
    flex-direction: column;
    gap: 15px;
    
    .left-actions .page-title {
      font-size: 20px;
    }
  }
  
  .timeline {
    &::before {
      left: 20px;
    }
  }
  
  .timeline-item {
    padding-left: 60px;
  }
  
  .timeline-marker {
    left: 11px;
  }
  
  .work-meta, .project-meta, .education-meta {
    flex-direction: column;
    gap: 8px;
  }
}

@media (max-width: 480px) {
  .screenshots-gallery {
    grid-template-columns: repeat(2, 1fr);
  }
  
  .screenshot-img {
    height: 100px;
  }
}
</style>
