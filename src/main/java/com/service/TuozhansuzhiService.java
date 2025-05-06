package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.TuozhansuzhiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.TuozhansuzhiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.TuozhansuzhiView;


/**
 * 拓展素质
 *
 * @author 
 * @email 
 * @date 2022-04-10 22:42:06
 */
public interface TuozhansuzhiService extends IService<TuozhansuzhiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<TuozhansuzhiVO> selectListVO(Wrapper<TuozhansuzhiEntity> wrapper);
   	
   	TuozhansuzhiVO selectVO(@Param("ew") Wrapper<TuozhansuzhiEntity> wrapper);
   	
   	List<TuozhansuzhiView> selectListView(Wrapper<TuozhansuzhiEntity> wrapper);
   	
   	TuozhansuzhiView selectView(@Param("ew") Wrapper<TuozhansuzhiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<TuozhansuzhiEntity> wrapper);
   	

}

