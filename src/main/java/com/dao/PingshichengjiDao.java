package com.dao;

import com.entity.PingshichengjiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.PingshichengjiVO;
import com.entity.view.PingshichengjiView;


/**
 * 平时成绩
 * 
 * @author 
 * @email 
 * @date 2022-04-10 22:42:06
 */
public interface PingshichengjiDao extends BaseMapper<PingshichengjiEntity> {
	
	List<PingshichengjiVO> selectListVO(@Param("ew") Wrapper<PingshichengjiEntity> wrapper);
	
	PingshichengjiVO selectVO(@Param("ew") Wrapper<PingshichengjiEntity> wrapper);
	
	List<PingshichengjiView> selectListView(@Param("ew") Wrapper<PingshichengjiEntity> wrapper);

	List<PingshichengjiView> selectListView(Pagination page,@Param("ew") Wrapper<PingshichengjiEntity> wrapper);
	
	PingshichengjiView selectView(@Param("ew") Wrapper<PingshichengjiEntity> wrapper);
	

}
