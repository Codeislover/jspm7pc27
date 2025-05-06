package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.QuanzhongshezhiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.QuanzhongshezhiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.QuanzhongshezhiView;


/**
 * 权重设置
 *
 * @author 
 * @email 
 * @date 2022-04-10 22:42:06
 */
public interface QuanzhongshezhiService extends IService<QuanzhongshezhiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<QuanzhongshezhiVO> selectListVO(Wrapper<QuanzhongshezhiEntity> wrapper);
   	
   	QuanzhongshezhiVO selectVO(@Param("ew") Wrapper<QuanzhongshezhiEntity> wrapper);
   	
   	List<QuanzhongshezhiView> selectListView(Wrapper<QuanzhongshezhiEntity> wrapper);
   	
   	QuanzhongshezhiView selectView(@Param("ew") Wrapper<QuanzhongshezhiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<QuanzhongshezhiEntity> wrapper);
   	

}

