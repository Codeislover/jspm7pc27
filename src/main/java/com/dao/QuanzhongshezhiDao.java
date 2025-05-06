package com.dao;

import com.entity.QuanzhongshezhiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.QuanzhongshezhiVO;
import com.entity.view.QuanzhongshezhiView;


/**
 * 权重设置
 * 
 * @author 
 * @email 
 * @date 2022-04-10 22:42:06
 */
public interface QuanzhongshezhiDao extends BaseMapper<QuanzhongshezhiEntity> {
	
	List<QuanzhongshezhiVO> selectListVO(@Param("ew") Wrapper<QuanzhongshezhiEntity> wrapper);
	
	QuanzhongshezhiVO selectVO(@Param("ew") Wrapper<QuanzhongshezhiEntity> wrapper);
	
	List<QuanzhongshezhiView> selectListView(@Param("ew") Wrapper<QuanzhongshezhiEntity> wrapper);

	List<QuanzhongshezhiView> selectListView(Pagination page,@Param("ew") Wrapper<QuanzhongshezhiEntity> wrapper);
	
	QuanzhongshezhiView selectView(@Param("ew") Wrapper<QuanzhongshezhiEntity> wrapper);
	

}
