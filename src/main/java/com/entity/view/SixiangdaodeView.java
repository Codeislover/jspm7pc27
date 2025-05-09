package com.entity.view;

import com.entity.SixiangdaodeEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 思想道德
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-10 22:42:06
 */
@TableName("sixiangdaode")
public class SixiangdaodeView  extends SixiangdaodeEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public SixiangdaodeView(){
	}
 
 	public SixiangdaodeView(SixiangdaodeEntity sixiangdaodeEntity){
 	try {
			BeanUtils.copyProperties(this, sixiangdaodeEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
