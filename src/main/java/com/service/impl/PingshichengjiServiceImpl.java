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


import com.dao.PingshichengjiDao;
import com.entity.PingshichengjiEntity;
import com.service.PingshichengjiService;
import com.entity.vo.PingshichengjiVO;
import com.entity.view.PingshichengjiView;

@Service("pingshichengjiService")
public class PingshichengjiServiceImpl extends ServiceImpl<PingshichengjiDao, PingshichengjiEntity> implements PingshichengjiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<PingshichengjiEntity> page = this.selectPage(
                new Query<PingshichengjiEntity>(params).getPage(),
                new EntityWrapper<PingshichengjiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<PingshichengjiEntity> wrapper) {
		  Page<PingshichengjiView> page =new Query<PingshichengjiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<PingshichengjiVO> selectListVO(Wrapper<PingshichengjiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public PingshichengjiVO selectVO(Wrapper<PingshichengjiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<PingshichengjiView> selectListView(Wrapper<PingshichengjiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public PingshichengjiView selectView(Wrapper<PingshichengjiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
