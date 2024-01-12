package com.entity.view;

import com.entity.DakajiluEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 打卡记录
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-02 11:59:02
 */
@TableName("dakajilu")
public class DakajiluView  extends DakajiluEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DakajiluView(){
	}
 
 	public DakajiluView(DakajiluEntity dakajiluEntity){
 	try {
			BeanUtils.copyProperties(this, dakajiluEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
