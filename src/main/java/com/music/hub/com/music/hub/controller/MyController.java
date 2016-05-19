package com.music.hub.com.music.hub.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController
{
	@RequestMapping(value="/")
	public ModelAndView common() throws IOException{
		
		ModelAndView mav = new ModelAndView("index");
		
		return mav ;
	}
	
	@RequestMapping(value="/index")
	public ModelAndView index() throws IOException{
		
		ModelAndView mav = new ModelAndView("index");
		
		return mav ;
	}
	
	@RequestMapping(value="/contactus")
	public ModelAndView contactus() throws IOException{
		
		ModelAndView mav = new ModelAndView("contactus");
		
		return mav ;
	}
	
	@RequestMapping(value="/aboutus")
	public ModelAndView aboutus() throws IOException{
		
		ModelAndView mav = new ModelAndView("aboutus");
		
		return mav ;
	}
	
	@RequestMapping(value="/login")
	public ModelAndView login() throws IOException{
		
		ModelAndView mav = new ModelAndView("login");
		
		return mav ;
	}
	
	@RequestMapping(value="/signup")
	public ModelAndView signup() throws IOException{
		
		ModelAndView mav = new ModelAndView("signup");
		
		return mav ;
	}
	
	@RequestMapping(value="/product" , method = RequestMethod.GET )
	public ModelAndView productWithKey(@RequestParam(value="searchKey",defaultValue="") String searchKey) throws IOException{
		
		ModelAndView mav = new ModelAndView("product");
		
		System.out.println(searchKey);
		
		mav.addObject("searchKey",searchKey);
		
		return mav ;
	}
	
	@RequestMapping(value="")
	public ModelAndView def() throws IOException{
		
		ModelAndView mav = new ModelAndView("index");
		
		return mav ;
	}
	
	
}
