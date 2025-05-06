package com.entity.model;

import com.entity.QuanzhongshezhiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 权重设置
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-04-10 22:42:06
 */
public class QuanzhongshezhiModel  implements Serializable {
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
