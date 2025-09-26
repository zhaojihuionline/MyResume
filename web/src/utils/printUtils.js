// 简历打印和PDF生成工具函数
import html2canvas from 'html2canvas'
import jsPDF from 'jspdf'

/**
 * 打印简历
 * @param {string} elementId - 要打印的元素ID
 * @param {string} title - 打印标题
 */
export function printResume(elementId = 'resumeContent', title = '简历') {
  // 设置打印样式
  const printStyles = `
    <style>
      @media print {
        @page {
          size: A4;
          margin: 0.5in;
        }
        
        body {
          font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
          font-size: 12px;
          line-height: 1.4;
          color: #000;
          background: white;
        }
        
        * {
          -webkit-print-color-adjust: exact;
          print-color-adjust: exact;
        }
        
        .no-print {
          display: none !important;
        }
        
        .print-break {
          page-break-before: always;
        }
        
        .print-avoid-break {
          page-break-inside: avoid;
        }
        
        h1, h2, h3, h4, h5, h6 {
          page-break-after: avoid;
        }
        
        img {
          max-width: 100% !important;
          height: auto !important;
        }
        
        .timeline::before {
          background: #667eea !important;
        }
        
        .timeline-marker {
          background: #667eea !important;
        }
        
        .skill-tag {
          background: #667eea !important;
          color: white !important;
        }
        
        .tech-tag {
          border: 1px solid #1976d2 !important;
          background: #e3f2fd !important;
          color: #1976d2 !important;
        }
      }
    </style>
  `
  
  const element = document.getElementById(elementId)
  if (!element) {
    console.error('未找到要打印的元素')
    return
  }
  
  // 创建打印窗口
  const printWindow = window.open('', '_blank')
  if (!printWindow) {
    console.error('无法打开打印窗口，请检查浏览器弹窗设置')
    return
  }
  
  // 设置打印窗口内容
  printWindow.document.write(`
    <!DOCTYPE html>
    <html>
    <head>
      <meta charset="utf-8">
      <title>${title}</title>
      ${printStyles}
    </head>
    <body>
      ${element.outerHTML}
    </body>
    </html>
  `)
  
  printWindow.document.close()
  
  // 等待内容加载完成后打印
  printWindow.onload = () => {
    setTimeout(() => {
      printWindow.print()
      printWindow.close()
    }, 500)
  }
}

/**
 * 生成PDF
 * @param {string} elementId - 要转换的元素ID
 * @param {string} filename - PDF文件名
 * @param {Object} options - 配置选项
 */
export async function generatePDF(elementId = 'resumeContent', filename = '简历.pdf', options = {}) {
  const defaultOptions = {
    scale: 2, // 提高清晰度
    useCORS: true,
    allowTaint: true,
    backgroundColor: '#ffffff',
    width: 794, // A4纸宽度 (像素)
    height: 1123, // A4纸高度 (像素)
    ...options
  }
  
  try {
    const element = document.getElementById(elementId)
    if (!element) {
      throw new Error('未找到要转换的元素')
    }
    
    // 隐藏不需要打印的元素
    const noPrintElements = element.querySelectorAll('.no-print')
    noPrintElements.forEach(el => {
      el.style.display = 'none'
    })
    
    // 使用html2canvas转换为图片
    const canvas = await html2canvas(element, defaultOptions)
    
    // 恢复隐藏的元素
    noPrintElements.forEach(el => {
      el.style.display = ''
    })
    
    // 创建PDF
    const imgData = canvas.toDataURL('image/png')
    const pdf = new jsPDF('p', 'mm', 'a4')
    
    // 计算图片在PDF中的尺寸
    const pdfWidth = pdf.internal.pageSize.getWidth()
    const pdfHeight = pdf.internal.pageSize.getHeight()
    const imgWidth = canvas.width
    const imgHeight = canvas.height
    const ratio = Math.min(pdfWidth / imgWidth, pdfHeight / imgHeight)
    const imgX = (pdfWidth - imgWidth * ratio) / 2
    const imgY = 0
    
    // 如果内容高度超过一页，需要分页
    const pageHeight = pdfHeight / ratio
    let heightLeft = imgHeight
    let position = 0
    
    // 添加第一页
    pdf.addImage(imgData, 'PNG', imgX, imgY, imgWidth * ratio, Math.min(imgHeight * ratio, pdfHeight))
    heightLeft -= pageHeight
    
    // 添加后续页面
    while (heightLeft >= 0) {
      position = heightLeft - imgHeight
      pdf.addPage()
      pdf.addImage(imgData, 'PNG', imgX, position * ratio, imgWidth * ratio, imgHeight * ratio)
      heightLeft -= pageHeight
    }
    
    // 保存PDF
    pdf.save(filename)
    
    return {
      success: true,
      message: 'PDF生成成功'
    }
    
  } catch (error) {
    console.error('生成PDF失败:', error)
    return {
      success: false,
      message: error.message || 'PDF生成失败'
    }
  }
}

/**
 * 优化简历元素以适应打印
 * @param {string} elementId - 简历元素ID
 */
export function optimizeForPrint(elementId = 'resumeContent') {
  const element = document.getElementById(elementId)
  if (!element) return
  
  // 添加打印优化类
  element.classList.add('print-optimized')
  
  // 为长内容添加分页控制
  const sections = element.querySelectorAll('.work-section, .project-section, .education-section')
  sections.forEach(section => {
    section.classList.add('print-avoid-break')
  })
  
  // 为项目卡片添加分页控制
  const projectCards = element.querySelectorAll('.project-card')
  projectCards.forEach(card => {
    card.classList.add('print-avoid-break')
  })
  
  // 为时间线项目添加分页控制
  const timelineItems = element.querySelectorAll('.timeline-item')
  timelineItems.forEach(item => {
    item.classList.add('print-avoid-break')
  })
}

/**
 * 检测浏览器打印支持
 */
export function checkPrintSupport() {
  return {
    print: typeof window.print === 'function',
    canvas: typeof html2canvas === 'function',
    pdf: typeof jsPDF === 'function'
  }
}

/**
 * 获取打印预览
 * @param {string} elementId - 要预览的元素ID
 */
export function getPrintPreview(elementId = 'resumeContent') {
  const element = document.getElementById(elementId)
  if (!element) return null
  
  // 创建预览容器
  const previewContainer = document.createElement('div')
  previewContainer.style.cssText = `
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.8);
    z-index: 9999;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
    box-sizing: border-box;
  `
  
  const previewContent = document.createElement('div')
  previewContent.style.cssText = `
    background: white;
    width: 210mm;
    min-height: 297mm;
    padding: 20mm;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
    overflow: auto;
    max-height: 90vh;
    box-sizing: border-box;
  `
  
  previewContent.innerHTML = element.innerHTML
  
  const closeButton = document.createElement('button')
  closeButton.textContent = '关闭预览'
  closeButton.style.cssText = `
    position: absolute;
    top: 20px;
    right: 20px;
    background: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    font-size: 14px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
  `
  
  closeButton.onclick = () => {
    document.body.removeChild(previewContainer)
  }
  
  previewContainer.appendChild(previewContent)
  previewContainer.appendChild(closeButton)
  
  // 点击背景关闭
  previewContainer.onclick = (e) => {
    if (e.target === previewContainer) {
      document.body.removeChild(previewContainer)
    }
  }
  
  document.body.appendChild(previewContainer)
  
  return previewContainer
}

export default {
  printResume,
  generatePDF,
  optimizeForPrint,
  checkPrintSupport,
  getPrintPreview
}
