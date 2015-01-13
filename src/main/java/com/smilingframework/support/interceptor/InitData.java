package com.smilingframework.support.interceptor;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.smilingframework.core.runtime.utils.PropertiesUtil;
import com.smilingframework.support.model.sys.Modular;
import com.smilingframework.support.service.ModularService;

/**
 * @author 初始化数据库
 *
 */
@Component
public class InitData implements InitializingBean{

	
	private Logger logger = Logger.getLogger(InitData.class);
	
	
	@Autowired
	private ModularService modularService;
	
	@Override
	@Transactional(rollbackOn={Exception.class})
	public void afterPropertiesSet() throws Exception {
		print();
		logger.info("======================================");
		logger.info("****************初始化云口腔***************");
		logger.info("======================================");
		initProperties();
		initMoular();
		logger.info("======================================");
		logger.info("***************初始化云口腔结束*************");
		logger.info("======================================");
	}
	
	private void initMoular(){
		List<Modular>  list = modularService.findAll();
		if(list.size() > 0 ){
			return;
		}
		String[] ids = new String[]{"1","10","11","2","20","21","22","3","30","31","32","33","4","40","400","401","41","410","411","42","420","421","43"};
		modularService.deleteBatch(ids);
		list = new ArrayList<>();
		Modular modular1 = new Modular("1","预约中心","icon-table","0");
		Modular modular10 = new Modular("10","新增预约","","1");
		Modular modular11 = new Modular("11","预约列表","","1");
		list.add(modular1);
		list.add(modular10);
		list.add(modular11);
		Modular modular2 = new Modular("2","患者中心","icon-user","0");
		Modular modular20 = new Modular("20","今日患者","","2");
		Modular modular21 = new Modular("21","新增患者","","2");
		Modular modular22 = new Modular("22","患者列表","","2");
		list.add(modular2);
		list.add(modular20);
		list.add(modular21);
		list.add(modular22);
		Modular modular3 = new Modular("3","库存中心","icon-briefcase","0");
		Modular modular30 = new Modular("30","登记出库","","3");
		Modular modular31 = new Modular("31","登记入库","","3");
		Modular modular32 = new Modular("32","库存管理","","3");
		Modular modular33 = new Modular("33","库存统计","","3");
		list.add(modular3);
		list.add(modular30);
		list.add(modular31);
		list.add(modular32);
		list.add(modular33);
		Modular modular4 = new Modular("4","系统设置","icon-cogs","0");
		list.add(modular4);
		Modular modular40 = new Modular("40","员工中心","","4");
		Modular modular400 = new Modular("400","新增员工","","40");
		Modular modular401 = new Modular("401","员工列表","","40");
		list.add(modular40);
		list.add(modular400);
		list.add(modular401);
		Modular modular41 = new Modular("41","角色设置","","4");
		Modular modular410 = new Modular("410","新增角色","","41");
		Modular modular411 = new Modular("411","角色列表","","41");
		list.add(modular41);
		list.add(modular410);
		list.add(modular411);
		Modular modular42 = new Modular("42","范文设置","","4");
		Modular modular420 = new Modular("420","新增范文","","42");
		Modular modular421 = new Modular("421","范文列表","","42");
		list.add(modular42);
		list.add(modular420);
		list.add(modular421);
		Modular modular43 = new Modular("43","权限设置","","4");
		list.add(modular43);
		Modular modular5 = new Modular("5","统计中心","icon-bar-chart","0");
		list.add(modular5);
		modularService.save(list);
		logger.info("重新初始化模块列表：" + list.size());
	}
	private void initProperties(){
		String[] pathes = new String[] { "META-INF/config/sys.properties"};
		PropertiesUtil pi = new PropertiesUtil();
		pi.init(pathes);
		logger.info("初始化配置文件："+pathes[0]);
	}
	
	private void print(){
		logger.info(" * 　　　　　　　　┏┓　　　┏┓");
		logger.info(" * 　　　　　　　┏┛┻━━━┛┻┓");
		logger.info(" * 　　　　　　　┃　　　　　　　┃ 　");
		logger.info(" * 　　　　　　　┃　　　━　　　┃");
		logger.info(" * 　　　　　　　┃　＞　　　＜　┃");
		logger.info(" * 　　　　　　　┃　　　　　　　┃");
		logger.info(" * 　　　　　　　┃...　⌒　...　┃");
		logger.info(" * 　　　　　　　┃　　　　　　　┃");
		logger.info(" * 　　　　　　　┗━┓　　　┏━┛");
		logger.info(" * 　　　　　　　　　┃　　　┃　　　");
		logger.info(" * 　　　　　　　　　┃　　　┃   神兽保佑,代码无bug");
		logger.info(" * 　　　　　　　　　┃　　　┃　　　　　　　　　　　");
		logger.info(" * 　　　　　　　　　┃　　　┃  　　　　　　");
		logger.info(" * 　　　　　　　　　┃　　　┃");
		logger.info(" * 　　　　　　　　　┃　　　┃　　");
		logger.info(" * 　　　　　　　　　┃　　　┗━━━┓");
		logger.info(" * 　　　　　　　　　┃　　　　　　　┣┓");
		logger.info(" * 　　　　　　　　　┃　　　　　　　┏┛");
		logger.info(" * 　　　　　　　　　┗┓┓┏━┳┓┏┛");
		logger.info(" * 　　　　　　　　　　┃┫┫　┃┫┫");
		logger.info(" * 　　　　　　　　　　┗┻┛　┗┻┛");
	}
	
	
	
}
