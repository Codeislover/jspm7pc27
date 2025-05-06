package com.entity.view;

import com.entity.TuozhansuzhiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 拓展素质
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-10 22:42:06
 */
@TableName("tuozhansuzhi")
public class TuozhansuzhiView  extends TuozhansuzhiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public TuozhansuzhiView(){
	}
 
 	public TuozhansuzhiView(TuozhansuzhiEntity tuozhansuzhiEntity){
 	try {
			BeanUtils.copyProperties(this, tuozhansuzhiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
