package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/searchInsert")

public class SerchInsertController {
	public ModelAndView searchConfing(@RequestParam(name="id") String m){
		
		return null;
		
	}
	
	
}
