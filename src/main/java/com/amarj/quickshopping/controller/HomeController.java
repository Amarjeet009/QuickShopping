package com.amarj.quickshopping.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.amarj.quickshopping.dao.UserDAO;
import com.amarj.quickshopping.model.User;

@Controller
public class HomeController {
	
	@Autowired
	private User user;
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private HttpSession session;


	//   http://localhost:8080/ShoppingCart/
	@RequestMapping("/")
	public ModelAndView showHomePage()
	{
		System.out.println("Starting the method showHomePage");
		//Specifying which page you have navigateion
		ModelAndView mv = new ModelAndView("/Home");
		
		//Specify what data you have to carry to home page
		
		mv.addObject("msg", "WELCOME TO SHOPPING CART");
		
		return mv;
	}
	
	@RequestMapping("/Login")
	public ModelAndView showLoginPage()
	{
		System.out.println("Clicked on Login link");
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("isUserClickedLogin","true");
		
		return mv;
	}
	
	@RequestMapping("/Registration")
	public ModelAndView showRegistrationPage()
	{
		System.out.println("Clicked on Registraion link");
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("isUserClickedRegister","true");
		return mv;
	}
	
	
	@RequestMapping("/validate")
	public ModelAndView validateCredentials(@RequestParam("userID") String id, 
			@RequestParam("password") String pwd)
	{
		
		
		//Actually you have get the data from DB
		//Temporarily  -user->niit password =niit@123
		
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("isUserLoggedIn", "false");
		if( userDAO.validate(id, pwd)==true)
		
		{
			//Credentials are correct
			mv.addObject("isUserLoggedIn", "true");
			
			user = userDAO.getUser(id);
			
			if(user.getRole().equals("ROLE_ADMIN"))
			{
				mv.addObject("isAdmin", "true");
			}
			else
			{
				mv.addObject("isAdmin", "false");
			}
			
			mv.addObject("successMessage", "Valid Credentials");
			session.setAttribute("loginMessage", "Welcome :" +id);
		}
		else
		{
			mv.addObject("errorMessage", "InValid Credentials...please try again");
		}
		
		return mv;
		
	}
	
	
	
	
	@RequestMapping("/logout")
	public ModelAndView logout()
	{
		ModelAndView mv =new ModelAndView("/Home");
		//session.invalidate();
		session.removeAttribute("loginMessage");
		return mv;
	
	}
	
	
	

}
