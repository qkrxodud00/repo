package controller;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import model.SearchDao;

@Controller
@RequestMapping("/search")

public class SearchController {
	@Autowired
	SearchDao sDao;
	@RequestMapping("/list")
	public ModelAndView searchList(HttpServletRequest req){
		String id = req.getParameter("id");
		System.out.println(id);
		ModelAndView mav = new ModelAndView();
		List<Map> list = sDao.searchList(id);
		mav.addObject("list",list);
		mav.setViewName("/search/list");
		return mav;
		
	}
	
}
