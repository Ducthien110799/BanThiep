package com.iuh.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.iuh.Service.AccountServiceImpl;
import com.iuh.entity.User;

@Controller
public class UserController extends BaseController {

	@Autowired
	AccountServiceImpl accountImpl= new AccountServiceImpl();
	
	@RequestMapping(value = "/dang-ki", method = RequestMethod.GET)
	public ModelAndView register() {
		_mvShare.setViewName("user/account/register");
		_mvShare.addObject("user",new User());
		return _mvShare;
	}
	
	@RequestMapping(value = "/dang-ki", method = RequestMethod.POST)
	public ModelAndView CrateAcc(@ModelAttribute("user") User user ) {
		int count = accountImpl.AddAccount(user);
		if(count>0)
			_mvShare.addObject("status","Đăng kí thành công");
		else
			_mvShare.addObject("status","Đăng kí thất bại");
		_mvShare.setViewName("user/account/register");
		return _mvShare;
	}
	
	@RequestMapping(value = "/dang-nhap", method = RequestMethod.POST)
	public ModelAndView Login(HttpSession session, @ModelAttribute("user") User user ) {
		
		user = accountImpl.CheckAccount(user);
		if(user != null) {
			_mvShare.setViewName("redirect:/");
			session.setAttribute("LoginInfo", user);
		}
		else
			_mvShare.addObject("statusLogin","Đăng nhập thất bại");
		return _mvShare;
	}
	
	@RequestMapping(value = "/dang-xuat", method = RequestMethod.GET)
	public String Login(HttpSession session,HttpServletRequest request) {
		session.removeAttribute("LoginInfo");	
		return "redirect:"+request.getHeader("referer");
	}
}
