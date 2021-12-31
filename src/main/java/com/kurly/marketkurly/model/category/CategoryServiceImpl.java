package com.kurly.marketkurly.model.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.marketkurly.domain.Category;

@Service
public class CategoryServiceImpl implements CategoryService{
	
	@Autowired
	private CategoryDAO categoryDAO;

	@Override
	public List selectAll() {
		List list = categoryDAO.selectAll();
		System.out.println("dao가 가져오는거 "+list);
		return list; 
	}

	@Override
	public Category select(int category_id) {
		return null;
	}

	@Override
	public void insert(Category category) {
		categoryDAO.insert(category);
	}

	@Override
	public void update(Category category) {
	}

	@Override
	public void delete(int category_id) {
	}

}
