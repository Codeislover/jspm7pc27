package com.dao;

import com.entity.SixiangdaodeEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.SixiangdaodeVO;
import com.entity.view.SixiangdaodeView;


/**
 * 思想道德
 * 
 * @author 
 * @email 
 * @date 2022-04-10 22:42:06
 */
public interface SixiangdaodeDao extends BaseMapper<SixiangdaodeEntity> {
	
	List<SixiangdaodeVO> selectListVO(@Param("ew") Wrapper<SixiangdaodeEntity> wrapper);
	
	SixiangdaodeVO selectVO(@Param("ew") Wrapper<SixiangdaodeEntity> wrapper);
	
	List<SixiangdaodeView> selectListView(@Param("ew") Wrapper<SixiangdaodeEntity> wrapper);

	List<SixiangdaodeView> selectListView(Pagination page,@Param("ew") Wrapper<SixiangdaodeEntity> wrapper);
	
	SixiangdaodeView selectView(@Param("ew") Wrapper<SixiangdaodeEntity> wrapper);
	

}
