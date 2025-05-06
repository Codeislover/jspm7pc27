package com.entity.view;

import com.entity.QuanzhongshezhiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 权重设置
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-10 22:42:06
 */
@TableName("quanzhongshezhi")
public class QuanzhongshezhiView  extends QuanzhongshezhiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public QuanzhongshezhiView(){
	}
 
 	public QuanzhongshezhiView(QuanzhongshezhiEntity quanzhongshezhiEntity){
 	try {
			BeanUtils.copyProperties(this, quanzhongshezhiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
