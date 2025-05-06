package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.SixiangdaodeEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.SixiangdaodeVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.SixiangdaodeView;


/**
 * 思想道德
 *
 * @author 
 * @email 
 * @date 2022-04-10 22:42:06
 */
public interface SixiangdaodeService extends IService<SixiangdaodeEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<SixiangdaodeVO> selectListVO(Wrapper<SixiangdaodeEntity> wrapper);
   	
   	SixiangdaodeVO selectVO(@Param("ew") Wrapper<SixiangdaodeEntity> wrapper);
   	
   	List<SixiangdaodeView> selectListView(Wrapper<SixiangdaodeEntity> wrapper);
   	
   	SixiangdaodeView selectView(@Param("ew") Wrapper<SixiangdaodeEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<SixiangdaodeEntity> wrapper);
   	

}

