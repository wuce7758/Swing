package com.qhit.dao;

import java.util.List;

import com.qhit.model.GoodType;

public interface IGoodTypeDao {

	/**
	 * 查询全部商品
	 * 
	 * @return
	 */
	public List<GoodType> searchAll();

	/**
	 * 根据商品名称查询商品信息
	 * 
	 * @param name
	 * @return
	 */
	public GoodType searchByName(String name);
}