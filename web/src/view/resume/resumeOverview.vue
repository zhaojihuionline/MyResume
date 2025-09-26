<template>
  <div class="resume-overview">
    <div class="page-header">
      <div class="header-content">
        <h1 class="page-title">
          <i class="el-icon-user"></i>
          简历管理中心
        </h1>
        <p class="page-description">管理您的个人简历信息，创建专业的简历展示</p>
      </div>
    </div>

    <div class="overview-content">
      <div class="stats-cards">
        <div class="stat-card">
          <div class="stat-icon basic-info">
            <i class="el-icon-user-solid"></i>
          </div>
          <div class="stat-content">
            <h3>基本信息</h3>
            <p class="stat-number">{{ resumeStats.basicInfo || 0 }}</p>
            <p class="stat-desc">份简历档案</p>
          </div>
        </div>
        
        <div class="stat-card">
          <div class="stat-icon work-exp">
            <i class="el-icon-office-building"></i>
          </div>
          <div class="stat-content">
            <h3>工作经历</h3>
            <p class="stat-number">{{ resumeStats.workExperience || 0 }}</p>
            <p class="stat-desc">条工作记录</p>
          </div>
        </div>
        
        <div class="stat-card">
          <div class="stat-icon projects">
            <i class="el-icon-folder-opened"></i>
          </div>
          <div class="stat-content">
            <h3>项目经验</h3>
            <p class="stat-number">{{ resumeStats.projects || 0 }}</p>
            <p class="stat-desc">个项目案例</p>
          </div>
        </div>
        
        <div class="stat-card">
          <div class="stat-icon education">
            <i class="el-icon-school"></i>
          </div>
          <div class="stat-content">
            <h3>教育背景</h3>
            <p class="stat-number">{{ resumeStats.education || 0 }}</p>
            <p class="stat-desc">条教育记录</p>
          </div>
        </div>
      </div>

      <div class="action-section">
        <div class="section-title">
          <h2>快速操作</h2>
          <p>选择下方操作来管理您的简历信息</p>
        </div>
        
        <div class="action-grid">
          <div class="action-card" @click="navigateTo('/resume/resumeBasicInfo/resumeBasicInfo')">
            <div class="action-icon basic">
              <i class="el-icon-edit"></i>
            </div>
            <div class="action-content">
              <h3>编辑基本信息</h3>
              <p>更新个人基本信息、联系方式和技能标签</p>
            </div>
            <div class="action-arrow">
              <i class="el-icon-arrow-right"></i>
            </div>
          </div>
          
          <div class="action-card" @click="navigateTo('/resume/resumeWorkExperience/resumeWorkExperience')">
            <div class="action-icon work">
              <i class="el-icon-suitcase"></i>
            </div>
            <div class="action-content">
              <h3>管理工作经历</h3>
              <p>添加、编辑工作经历和职业成就</p>
            </div>
            <div class="action-arrow">
              <i class="el-icon-arrow-right"></i>
            </div>
          </div>
          
          <div class="action-card" @click="navigateTo('/resume/resumeProject/resumeProject')">
            <div class="action-icon project">
              <i class="el-icon-collection"></i>
            </div>
            <div class="action-content">
              <h3>项目经验管理</h3>
              <p>展示您的项目作品和技术能力</p>
            </div>
            <div class="action-arrow">
              <i class="el-icon-arrow-right"></i>
            </div>
          </div>
          
          <div class="action-card" @click="navigateTo('/resume/resumeEducation/resumeEducation')">
            <div class="action-icon edu">
              <i class="el-icon-medal"></i>
            </div>
            <div class="action-content">
              <h3>教育背景</h3>
              <p>记录学历信息和在校表现</p>
            </div>
            <div class="action-arrow">
              <i class="el-icon-arrow-right"></i>
            </div>
          </div>
        </div>
      </div>

      <div class="preview-section">
        <div class="section-title">
          <h2>简历预览与分享</h2>
          <p>预览您的简历效果并生成分享链接</p>
        </div>
        
        <div class="preview-actions">
          <el-button 
            type="primary" 
            size="large" 
            icon="el-icon-view"
            @click="navigateTo('/resume/display')"
          >
            预览我的简历
          </el-button>
          
          <el-button 
            type="success" 
            size="large" 
            icon="el-icon-share"
            @click="showShareDialog"
            :disabled="!hasPublicResume"
          >
            分享简历链接
          </el-button>
          
          <el-button 
            type="info" 
            size="large" 
            icon="el-icon-printer"
            @click="printResume"
            :disabled="!hasResumeData"
          >
            打印简历
          </el-button>
        </div>
      </div>

      <div class="recent-activity">
        <div class="section-title">
          <h2>最近更新</h2>
          <p>查看最近的简历信息更新记录</p>
        </div>
        
        <div class="activity-list" v-if="recentActivities.length">
          <div 
            v-for="activity in recentActivities" 
            :key="activity.id"
            class="activity-item"
          >
            <div class="activity-icon" :class="activity.type">
              <i :class="getActivityIcon(activity.type)"></i>
            </div>
            <div class="activity-content">
              <h4>{{ activity.title }}</h4>
              <p>{{ activity.description }}</p>
              <span class="activity-time">{{ formatDateTime(activity.time) }}</span>
            </div>
          </div>
        </div>
        
        <div v-else class="no-activity">
          <i class="el-icon-document-remove"></i>
          <p>暂无最近更新记录</p>
        </div>
      </div>
    </div>

    <!-- 分享对话框 -->
    <el-dialog title="分享简历" :visible.sync="shareDialogVisible" width="500px">
      <div class="share-dialog-content">
        <div class="resume-selector" v-if="publicResumes.length > 1">
          <h4>选择要分享的简历：</h4>
          <el-select v-model="selectedResumeId" placeholder="请选择简历">
            <el-option
              v-for="resume in publicResumes"
              :key="resume.ID"
              :label="resume.name"
              :value="resume.ID">
            </el-option>
          </el-select>
        </div>
        
        <div class="share-url-section" v-if="selectedResumeId">
          <h4>分享链接：</h4>
          <el-input 
            v-model="shareUrl" 
            readonly
            class="share-url-input"
          >
            <el-button slot="append" @click="copyShareUrl" icon="el-icon-document-copy">复制</el-button>
          </el-input>
          <p class="share-tip">
            <i class="el-icon-info"></i>
            此链接可供招聘方查看您的公开简历
          </p>
        </div>
        
        <div v-if="!hasPublicResume" class="no-public-resume">
          <i class="el-icon-warning"></i>
          <p>您还没有设置为公开的简历</p>
          <p>请先在基本信息中将简历设为公开状态</p>
        </div>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { getResumeBasicInfoList } from '@/api/resume/resumeBasicInfo'
import { getResumeWorkExperienceList } from '@/api/resume/resumeWorkExperience'
import { getResumeEducationList } from '@/api/resume/resumeEducation'
import { getResumeProjectList } from '@/api/resume/resumeProject'

export default {
  name: 'ResumeOverview',
  data() {
    return {
      resumeStats: {
        basicInfo: 0,
        workExperience: 0,
        projects: 0,
        education: 0
      },
      recentActivities: [],
      shareDialogVisible: false,
      publicResumes: [],
      selectedResumeId: null,
      shareUrl: '',
      loading: true
    }
  },
  computed: {
    hasPublicResume() {
      return this.publicResumes.length > 0
    },
    hasResumeData() {
      return this.resumeStats.basicInfo > 0
    }
  },
  mounted() {
    this.loadStatistics()
    this.loadRecentActivities()
  },
  methods: {
    async loadStatistics() {
      try {
        const [basicRes, workRes, eduRes, projectRes] = await Promise.all([
          getResumeBasicInfoList({ page: 1, pageSize: 1 }),
          getResumeWorkExperienceList({ page: 1, pageSize: 1 }),
          getResumeEducationList({ page: 1, pageSize: 1 }),
          getResumeProjectList({ page: 1, pageSize: 1 })
        ])
        
        this.resumeStats = {
          basicInfo: basicRes.data.total || 0,
          workExperience: workRes.data.total || 0,
          education: eduRes.data.total || 0,
          projects: projectRes.data.total || 0
        }
        
        // 获取公开简历列表
        const publicBasicRes = await getResumeBasicInfoList({ 
          page: 1, 
          pageSize: 100,
          isPublic: true 
        })
        this.publicResumes = publicBasicRes.data.list || []
        
      } catch (error) {
        console.error('加载统计数据失败:', error)
      } finally {
        this.loading = false
      }
    },
    
    async loadRecentActivities() {
      // 模拟最近活动数据，实际项目中可以从后端API获取
      try {
        const [basicRes, workRes, eduRes, projectRes] = await Promise.all([
          getResumeBasicInfoList({ page: 1, pageSize: 5 }),
          getResumeWorkExperienceList({ page: 1, pageSize: 5 }),
          getResumeEducationList({ page: 1, pageSize: 5 }),
          getResumeProjectList({ page: 1, pageSize: 5 })
        ])
        
        const activities = []
        
        // 基本信息活动
        if (basicRes.data.list) {
          basicRes.data.list.forEach(item => {
            activities.push({
              id: `basic_${item.ID}`,
              type: 'basic',
              title: '更新基本信息',
              description: `更新了 ${item.name} 的基本信息`,
              time: item.UpdatedAt
            })
          })
        }
        
        // 工作经历活动
        if (workRes.data.list) {
          workRes.data.list.forEach(item => {
            activities.push({
              id: `work_${item.ID}`,
              type: 'work',
              title: '添加工作经历',
              description: `添加了在 ${item.companyName} 的 ${item.position} 工作经历`,
              time: item.UpdatedAt
            })
          })
        }
        
        // 教育背景活动
        if (eduRes.data.list) {
          eduRes.data.list.forEach(item => {
            activities.push({
              id: `edu_${item.ID}`,
              type: 'education',
              title: '更新教育背景',
              description: `添加了 ${item.school} ${item.degree} 学历信息`,
              time: item.UpdatedAt
            })
          })
        }
        
        // 项目经验活动
        if (projectRes.data.list) {
          projectRes.data.list.forEach(item => {
            activities.push({
              id: `project_${item.ID}`,
              type: 'project',
              title: '添加项目经验',
              description: `添加了项目 ${item.projectName}`,
              time: item.UpdatedAt
            })
          })
        }
        
        // 按时间排序并取前10条
        this.recentActivities = activities
          .sort((a, b) => new Date(b.time) - new Date(a.time))
          .slice(0, 10)
          
      } catch (error) {
        console.error('加载最近活动失败:', error)
      }
    },
    
    navigateTo(path) {
      this.$router.push(path)
    },
    
    showShareDialog() {
      if (this.publicResumes.length === 1) {
        this.selectedResumeId = this.publicResumes[0].ID
        this.updateShareUrl()
      }
      this.shareDialogVisible = true
    },
    
    updateShareUrl() {
      if (this.selectedResumeId) {
        this.shareUrl = `${window.location.origin}/#/resume/public/${this.selectedResumeId}`
      }
    },
    
    copyShareUrl() {
      navigator.clipboard.writeText(this.shareUrl).then(() => {
        this.$message.success('链接已复制到剪贴板')
      }).catch(() => {
        this.$message.error('复制失败，请手动复制')
      })
    },
    
    printResume() {
      this.$router.push('/resume/display')
    },
    
    getActivityIcon(type) {
      const iconMap = {
        basic: 'el-icon-user-solid',
        work: 'el-icon-suitcase',
        education: 'el-icon-school',
        project: 'el-icon-folder-opened'
      }
      return iconMap[type] || 'el-icon-document'
    },
    
    formatDateTime(dateString) {
      if (!dateString) return ''
      const date = new Date(dateString)
      const now = new Date()
      const diff = now - date
      
      if (diff < 60000) { // 1分钟内
        return '刚刚'
      } else if (diff < 3600000) { // 1小时内
        return `${Math.floor(diff / 60000)}分钟前`
      } else if (diff < 86400000) { // 24小时内
        return `${Math.floor(diff / 3600000)}小时前`
      } else if (diff < 604800000) { // 7天内
        return `${Math.floor(diff / 86400000)}天前`
      } else {
        return `${date.getFullYear()}-${String(date.getMonth() + 1).padStart(2, '0')}-${String(date.getDate()).padStart(2, '0')}`
      }
    }
  },
  watch: {
    selectedResumeId() {
      this.updateShareUrl()
    }
  }
}
</script>

<style lang="scss" scoped>
.resume-overview {
  background: #f5f7fa;
  min-height: calc(100vh - 60px);
}

.page-header {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  padding: 40px 0;
  margin-bottom: 30px;
}

.header-content {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
  text-align: center;
}

.page-title {
  font-size: 36px;
  margin: 0 0 15px 0;
  font-weight: 600;
  
  i {
    margin-right: 12px;
    font-size: 32px;
  }
}

.page-description {
  font-size: 18px;
  margin: 0;
  opacity: 0.9;
}

.overview-content {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
}

// 统计卡片
.stats-cards {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 20px;
  margin-bottom: 40px;
}

.stat-card {
  background: white;
  padding: 25px;
  border-radius: 12px;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
  display: flex;
  align-items: center;
  transition: transform 0.2s ease, box-shadow 0.2s ease;
  
  &:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.12);
  }
}

.stat-icon {
  width: 60px;
  height: 60px;
  border-radius: 12px;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-right: 20px;
  
  i {
    font-size: 28px;
    color: white;
  }
  
  &.basic-info {
    background: linear-gradient(135deg, #667eea, #764ba2);
  }
  
  &.work-exp {
    background: linear-gradient(135deg, #f093fb, #f5576c);
  }
  
  &.projects {
    background: linear-gradient(135deg, #4facfe, #00f2fe);
  }
  
  &.education {
    background: linear-gradient(135deg, #43e97b, #38f9d7);
  }
}

.stat-content {
  flex: 1;
  
  h3 {
    margin: 0 0 8px 0;
    color: #2c3e50;
    font-size: 16px;
    font-weight: 600;
  }
  
  .stat-number {
    margin: 0;
    font-size: 28px;
    font-weight: bold;
    color: #667eea;
  }
  
  .stat-desc {
    margin: 5px 0 0 0;
    color: #7f8c8d;
    font-size: 14px;
  }
}

// 操作区域
.action-section, .preview-section, .recent-activity {
  background: white;
  border-radius: 12px;
  padding: 30px;
  margin-bottom: 30px;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
}

.section-title {
  margin-bottom: 25px;
  
  h2 {
    margin: 0 0 8px 0;
    color: #2c3e50;
    font-size: 24px;
    font-weight: 600;
  }
  
  p {
    margin: 0;
    color: #7f8c8d;
    font-size: 16px;
  }
}

.action-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 20px;
}

.action-card {
  display: flex;
  align-items: center;
  padding: 20px;
  border: 2px solid #e9ecef;
  border-radius: 12px;
  cursor: pointer;
  transition: all 0.3s ease;
  
  &:hover {
    border-color: #667eea;
    transform: translateY(-2px);
    box-shadow: 0 8px 25px rgba(102, 126, 234, 0.15);
  }
}

.action-icon {
  width: 50px;
  height: 50px;
  border-radius: 10px;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-right: 15px;
  
  i {
    font-size: 24px;
    color: white;
  }
  
  &.basic {
    background: linear-gradient(135deg, #667eea, #764ba2);
  }
  
  &.work {
    background: linear-gradient(135deg, #f093fb, #f5576c);
  }
  
  &.project {
    background: linear-gradient(135deg, #4facfe, #00f2fe);
  }
  
  &.edu {
    background: linear-gradient(135deg, #43e97b, #38f9d7);
  }
}

.action-content {
  flex: 1;
  
  h3 {
    margin: 0 0 5px 0;
    color: #2c3e50;
    font-size: 16px;
    font-weight: 600;
  }
  
  p {
    margin: 0;
    color: #7f8c8d;
    font-size: 14px;
  }
}

.action-arrow {
  color: #bdc3c7;
  font-size: 18px;
}

// 预览操作
.preview-actions {
  display: flex;
  gap: 15px;
  flex-wrap: wrap;
}

// 最近活动
.activity-list {
  display: flex;
  flex-direction: column;
  gap: 15px;
}

.activity-item {
  display: flex;
  align-items: flex-start;
  padding: 15px;
  background: #f8f9fa;
  border-radius: 8px;
  border-left: 4px solid #667eea;
}

.activity-icon {
  width: 40px;
  height: 40px;
  border-radius: 8px;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-right: 15px;
  flex-shrink: 0;
  
  i {
    font-size: 18px;
    color: white;
  }
  
  &.basic {
    background: #667eea;
  }
  
  &.work {
    background: #f5576c;
  }
  
  &.education {
    background: #43e97b;
  }
  
  &.project {
    background: #4facfe;
  }
}

.activity-content {
  flex: 1;
  
  h4 {
    margin: 0 0 5px 0;
    color: #2c3e50;
    font-size: 14px;
    font-weight: 600;
  }
  
  p {
    margin: 0 0 8px 0;
    color: #5a6c7d;
    font-size: 13px;
    line-height: 1.4;
  }
  
  .activity-time {
    color: #95a5a6;
    font-size: 12px;
  }
}

.no-activity {
  text-align: center;
  padding: 40px 20px;
  color: #95a5a6;
  
  i {
    font-size: 48px;
    margin-bottom: 15px;
    display: block;
  }
  
  p {
    margin: 0;
    font-size: 16px;
  }
}

// 分享对话框
.share-dialog-content {
  .resume-selector {
    margin-bottom: 20px;
    
    h4 {
      margin: 0 0 10px 0;
      color: #2c3e50;
    }
  }
  
  .share-url-section {
    h4 {
      margin: 0 0 10px 0;
      color: #2c3e50;
    }
  }
  
  .share-url-input {
    margin-bottom: 10px;
  }
  
  .share-tip {
    margin: 0;
    color: #7f8c8d;
    font-size: 14px;
    display: flex;
    align-items: center;
    
    i {
      margin-right: 5px;
    }
  }
  
  .no-public-resume {
    text-align: center;
    padding: 20px;
    color: #e67e22;
    
    i {
      font-size: 32px;
      margin-bottom: 10px;
      display: block;
    }
    
    p {
      margin: 5px 0;
    }
  }
}

// 响应式设计
@media (max-width: 768px) {
  .page-header {
    padding: 30px 0;
  }
  
  .page-title {
    font-size: 28px;
  }
  
  .page-description {
    font-size: 16px;
  }
  
  .stats-cards {
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 15px;
  }
  
  .action-grid {
    grid-template-columns: 1fr;
  }
  
  .preview-actions {
    flex-direction: column;
    
    .el-button {
      width: 100%;
    }
  }
  
  .action-section, .preview-section, .recent-activity {
    padding: 20px;
  }
}

@media (max-width: 480px) {
  .stats-cards {
    grid-template-columns: 1fr;
  }
  
  .stat-card {
    padding: 20px;
  }
  
  .stat-icon {
    width: 50px;
    height: 50px;
    margin-right: 15px;
    
    i {
      font-size: 24px;
    }
  }
  
  .stat-content {
    .stat-number {
      font-size: 24px;
    }
  }
}
</style>
