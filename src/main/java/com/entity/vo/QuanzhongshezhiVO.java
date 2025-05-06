package com.entity.vo;

import com.entity.QuanzhongshezhiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 权重设置
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-04-10 22:42:06
 */
public class QuanzhongshezhiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 占比
	 */
	
	private Float zhanbi;
		
	/**
	 * 说明
	 */
	
	private String shuoming;
				
	
	/**
	 * 设置：占比
	 */
	 
	public void setZhanbi(Float zhanbi) {
		this.zhanbi = zhanbi;
	}
	
	/**
	 * 获取：占比
	 */
	public Float getZhanbi() {
		return zhanbi;
	}
				
	
	/**
	 * 设置：说明
	 */
	 
	public void setShuoming(String shuoming) {
		this.shuoming = shuoming;
	}
	
	/**
	 * 获取：说明
	 */
	public String getShuoming() {
		return shuoming;
	}
			
}
