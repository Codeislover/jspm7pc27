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


import com.dao.QuanzhongshezhiDao;
import com.entity.QuanzhongshezhiEntity;
import com.service.QuanzhongshezhiService;
import com.entity.vo.QuanzhongshezhiVO;
import com.entity.view.QuanzhongshezhiView;

@Service("quanzhongshezhiService")
public class QuanzhongshezhiServiceImpl extends ServiceImpl<QuanzhongshezhiDao, QuanzhongshezhiEntity> implements QuanzhongshezhiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<QuanzhongshezhiEntity> page = this.selectPage(
                new Query<QuanzhongshezhiEntity>(params).getPage(),
                new EntityWrapper<QuanzhongshezhiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<QuanzhongshezhiEntity> wrapper) {
		  Page<QuanzhongshezhiView> page =new Query<QuanzhongshezhiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<QuanzhongshezhiVO> selectListVO(Wrapper<QuanzhongshezhiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public QuanzhongshezhiVO selectVO(Wrapper<QuanzhongshezhiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<QuanzhongshezhiView> selectListView(Wrapper<QuanzhongshezhiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public QuanzhongshezhiView selectView(Wrapper<QuanzhongshezhiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
