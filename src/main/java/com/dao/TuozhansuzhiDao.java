package com.dao;

import com.entity.TuozhansuzhiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.TuozhansuzhiVO;
import com.entity.view.TuozhansuzhiView;


/**
 * 拓展素质
 * 
 * @author 
 * @email 
 * @date 2022-04-10 22:42:06
 */
public interface TuozhansuzhiDao extends BaseMapper<TuozhansuzhiEntity> {
	
	List<TuozhansuzhiVO> selectListVO(@Param("ew") Wrapper<TuozhansuzhiEntity> wrapper);
	
	TuozhansuzhiVO selectVO(@Param("ew") Wrapper<TuozhansuzhiEntity> wrapper);
	
	List<TuozhansuzhiView> selectListView(@Param("ew") Wrapper<TuozhansuzhiEntity> wrapper);

	List<TuozhansuzhiView> selectListView(Pagination page,@Param("ew") Wrapper<TuozhansuzhiEntity> wrapper);
	
	TuozhansuzhiView selectView(@Param("ew") Wrapper<TuozhansuzhiEntity> wrapper);
	

}
