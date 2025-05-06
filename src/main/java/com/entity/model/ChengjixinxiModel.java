package com.entity.model;

import com.entity.ChengjixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 成绩信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-04-10 22:42:06
 */
public class ChengjixinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 学期
	 */
	
	private String xueqi;
		
	/**
	 * 学号
	 */
	
	private String xuehao;
		
	/**
	 * 学生姓名
	 */
	
	private String xueshengxingming;
		
	/**
	 * 院系
	 */
	
	private String yuanxi;
		
	/**
	 * 年级
	 */
	
	private String nianji;
		
	/**
	 * 班级
	 */
	
	private String banji;
		
	/**
	 * 思想道德
	 */
	
	private Integer sixiangdaode;
		
	/**
	 * 拓展素质
	 */
	
	private Integer tuozhansuzhi;
		
	/**
	 * 平时成绩
	 */
	
	private Integer pingshichengji;
		
	/**
	 * 总分数
	 */
	
	private Float zongfenshu;
		
	/**
	 * 成绩
	 */
	
	private String chengji;
		
	/**
	 * 发布时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date fabushijian;
		
	/**
	 * 教师姓名
	 */
	
	private String jiaoshixingming;
		
	/**
	 * 工号
	 */
	
	private String gonghao;
				
	
	/**
	 * 设置：学期
	 */
	 
	public void setXueqi(String xueqi) {
		this.xueqi = xueqi;
	}
	
	/**
	 * 获取：学期
	 */
	public String getXueqi() {
		return xueqi;
	}
				
	
	/**
	 * 设置：学号
	 */
	 
	public void setXuehao(String xuehao) {
		this.xuehao = xuehao;
	}
	
	/**
	 * 获取：学号
	 */
	public String getXuehao() {
		return xuehao;
	}
				
	
	/**
	 * 设置：学生姓名
	 */
	 
	public void setXueshengxingming(String xueshengxingming) {
		this.xueshengxingming = xueshengxingming;
	}
	
	/**
	 * 获取：学生姓名
	 */
	public String getXueshengxingming() {
		return xueshengxingming;
	}
				
	
	/**
	 * 设置：院系
	 */
	 
	public void setYuanxi(String yuanxi) {
		this.yuanxi = yuanxi;
	}
	
	/**
	 * 获取：院系
	 */
	public String getYuanxi() {
		return yuanxi;
	}
				
	
	/**
	 * 设置：年级
	 */
	 
	public void setNianji(String nianji) {
		this.nianji = nianji;
	}
	
	/**
	 * 获取：年级
	 */
	public String getNianji() {
		return nianji;
	}
				
	
	/**
	 * 设置：班级
	 */
	 
	public void setBanji(String banji) {
		this.banji = banji;
	}
	
	/**
	 * 获取：班级
	 */
	public String getBanji() {
		return banji;
	}
				
	
	/**
	 * 设置：思想道德
	 */
	 
	public void setSixiangdaode(Integer sixiangdaode) {
		this.sixiangdaode = sixiangdaode;
	}
	
	/**
	 * 获取：思想道德
	 */
	public Integer getSixiangdaode() {
		return sixiangdaode;
	}
				
	
	/**
	 * 设置：拓展素质
	 */
	 
	public void setTuozhansuzhi(Integer tuozhansuzhi) {
		this.tuozhansuzhi = tuozhansuzhi;
	}
	
	/**
	 * 获取：拓展素质
	 */
	public Integer getTuozhansuzhi() {
		return tuozhansuzhi;
	}
				
	
	/**
	 * 设置：平时成绩
	 */
	 
	public void setPingshichengji(Integer pingshichengji) {
		this.pingshichengji = pingshichengji;
	}
	
	/**
	 * 获取：平时成绩
	 */
	public Integer getPingshichengji() {
		return pingshichengji;
	}
				
	
	/**
	 * 设置：总分数
	 */
	 
	public void setZongfenshu(Float zongfenshu) {
		this.zongfenshu = zongfenshu;
	}
	
	/**
	 * 获取：总分数
	 */
	public Float getZongfenshu() {
		return zongfenshu;
	}
				
	
	/**
	 * 设置：成绩
	 */
	 
	public void setChengji(String chengji) {
		this.chengji = chengji;
	}
	
	/**
	 * 获取：成绩
	 */
	public String getChengji() {
		return chengji;
	}
				
	
	/**
	 * 设置：发布时间
	 */
	 
	public void setFabushijian(Date fabushijian) {
		this.fabushijian = fabushijian;
	}
	
	/**
	 * 获取：发布时间
	 */
	public Date getFabushijian() {
		return fabushijian;
	}
				
	
	/**
	 * 设置：教师姓名
	 */
	 
	public void setJiaoshixingming(String jiaoshixingming) {
		this.jiaoshixingming = jiaoshixingming;
	}
	
	/**
	 * 获取：教师姓名
	 */
	public String getJiaoshixingming() {
		return jiaoshixingming;
	}
				
	
	/**
	 * 设置：工号
	 */
	 
	public void setGonghao(String gonghao) {
		this.gonghao = gonghao;
	}
	
	/**
	 * 获取：工号
	 */
	public String getGonghao() {
		return gonghao;
	}
			
}
