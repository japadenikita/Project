package com.nikita;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminLoginController {
	AdminLoginDAO adao = new AdminLoginDAO();

	@RequestMapping("/Adminlogin")
	public ModelAndView loginUser(HttpServletRequest req, HttpServletResponse res) {

		String usname = req.getParameter("un");
		String pas = req.getParameter("pwd");
		String result = adao.advalidate(usname, pas);

		ModelAndView mv = new ModelAndView();

		if (result.equals("Success")) {
			mv.setViewName("AdminHome.jsp");
			mv.addObject("name", usname);
		} else {
			mv.setViewName("Adminlogin1.jsp");
		}
		// mv.addObject("name", result);

		return mv;

	}

	@RequestMapping("/adminregister")
	public ModelAndView userRegistration(HttpServletRequest req, HttpServletResponse res) {

		String name = req.getParameter("adname");
		String contact = req.getParameter("adcontact");
		String email = req.getParameter("ademailid");
		String userName = req.getParameter("aduserName");
		String passWord = req.getParameter("adpassWord");

		String result = null;
		result = adao.adminRegistration(name, contact, email, userName, passWord);

		ModelAndView mv = new ModelAndView();
		if (result != null) {
			mv.setViewName("AdminHome.jsp");
			mv.addObject("adname", userName);
		} else {
			mv.setViewName("AdminRegistration1.jsp");
		}
		// mv.addObject("name", result);

		return mv;

	}
	
	
	

}
