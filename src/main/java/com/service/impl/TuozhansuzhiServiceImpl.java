package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.TuozhansuzhiDao;
import com.entity.TuozhansuzhiEntity;
import com.service.TuozhansuzhiService;
import com.entity.vo.TuozhansuzhiVO;
import com.entity.view.TuozhansuzhiView;

@Service("tuozhansuzhiService")
public class TuozhansuzhiServiceImpl extends ServiceImpl<TuozhansuzhiDao, TuozhansuzhiEntity> implements TuozhansuzhiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<TuozhansuzhiEntity> page = this.selectPage(
                new Query<TuozhansuzhiEntity>(params).getPage(),
                new EntityWrapper<TuozhansuzhiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<TuozhansuzhiEntity> wrapper) {
		  Page<TuozhansuzhiView> page =new Query<TuozhansuzhiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<TuozhansuzhiVO> selectListVO(Wrapper<TuozhansuzhiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public TuozhansuzhiVO selectVO(Wrapper<TuozhansuzhiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<TuozhansuzhiView> selectListView(Wrapper<TuozhansuzhiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public TuozhansuzhiView selectView(Wrapper<TuozhansuzhiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
