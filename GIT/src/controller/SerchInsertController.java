package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.InsertDao;

@Controller
@RequestMapping("/searchInsert")
// @RequestParam(name="id") String m
public class SerchInsertController {
	@Autowired
	InsertDao idao;

	@RequestMapping("/insert")
	public ModelAndView searchInsert() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("search/01");
		return mav;

	}

	@RequestMapping("/insertR")
	public ModelAndView searchInsertR(@RequestParam(name = "id") String m) {
		ModelAndView mav = new ModelAndView();
		System.out.println(m);
		int result = idao.InsertID(m);
		if(result==0){
			mav.setViewName("search/error");
		}else{
			mav.setViewName("search/01");
			
		}
		return mav;

	}

}
