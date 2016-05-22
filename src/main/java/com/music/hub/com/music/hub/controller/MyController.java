package com.music.hub.com.music.hub.controller;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

////////////////////////////////////////////////


////////////////////////////////////////////////



@Controller
public class MyController
{
	
	@RequestMapping(value="/" , method = RequestMethod.GET)
	public ModelAndView common() throws IOException{
		
		ModelAndView mav = new ModelAndView("index");
		
		return mav ;
	}
	
	@RequestMapping(value="/index" , method = RequestMethod.GET)
	public ModelAndView index() throws IOException{
		
		ModelAndView mav = new ModelAndView("index");
		
		return mav ;
	}
	
	@RequestMapping(value="/contactus" , method = RequestMethod.GET)
	public ModelAndView contactus() throws IOException{
		
		ModelAndView mav = new ModelAndView("contactus");
		
		return mav ;
	}
	
	@RequestMapping(value="/aboutus" , method = RequestMethod.GET )
	public ModelAndView aboutus() throws IOException{
		
		ModelAndView mav = new ModelAndView("aboutus");
		
		return mav ;
	}
	
	@RequestMapping(value="/login" , method = RequestMethod.GET)
	public ModelAndView login() throws IOException{
		
		ModelAndView mav = new ModelAndView("login");
		
		return mav ;
	}
	
	@RequestMapping(value="/signup" , method = RequestMethod.GET)
	public ModelAndView signup() throws IOException{
		
		ModelAndView mav = new ModelAndView("signup");
		
		return mav ;
	}
	
	@RequestMapping(value="/product" , method = RequestMethod.GET )
	public ModelAndView productWithKey(@RequestParam(value="searchKey",defaultValue="") String searchKey) throws IOException{
		
		ModelAndView mav = new ModelAndView("product");
		
		//System.out.println(searchKey);
		System.out.println(new datajs());
		
		mav.addObject("searchKey",searchKey);
		mav.addObject("dataValue", new datajs());
		
		return mav ;
	}
	
	
	
	
}
