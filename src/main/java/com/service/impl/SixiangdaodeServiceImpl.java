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


import com.dao.SixiangdaodeDao;
import com.entity.SixiangdaodeEntity;
import com.service.SixiangdaodeService;
import com.entity.vo.SixiangdaodeVO;
import com.entity.view.SixiangdaodeView;

@Service("sixiangdaodeService")
public class SixiangdaodeServiceImpl extends ServiceImpl<SixiangdaodeDao, SixiangdaodeEntity> implements SixiangdaodeService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<SixiangdaodeEntity> page = this.selectPage(
                new Query<SixiangdaodeEntity>(params).getPage(),
                new EntityWrapper<SixiangdaodeEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<SixiangdaodeEntity> wrapper) {
		  Page<SixiangdaodeView> page =new Query<SixiangdaodeView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<SixiangdaodeVO> selectListVO(Wrapper<SixiangdaodeEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public SixiangdaodeVO selectVO(Wrapper<SixiangdaodeEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<SixiangdaodeView> selectListView(Wrapper<SixiangdaodeEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public SixiangdaodeView selectView(Wrapper<SixiangdaodeEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
