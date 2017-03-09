package com.amarj.quickshopping.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.amarj.quickshopping.dao.CategoryDAO;
import com.amarj.quickshopping.model.Category;

@Controller
public class CategoryController {

	//Category.jsp -- addCategory, deleteCategory,showCategoryList, updateCategory, editCategory
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private Category category;
	
	//Curd Operations 
	
	public ModelAndView getAllCategories()
	{
		ModelAndView mv=new ModelAndView("/AdminHome");
	 List<Category> categoryList=categoryDAO.list();
	 
	 mv.addObject("categoryList", categoryList);
	 mv.addObject("isUserClickedCategory", true);
	 
	 return mv;
	}
	
}
