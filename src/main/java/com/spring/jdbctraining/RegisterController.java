package com.spring.jdbctraining;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.jdbctraining.DAO.StudentDAOImpl;
import com.spring.jdbctraining.model.Student;
import com.spring.jdbctraining.model.StudentNameEditor;

@Controller
public class RegisterController {


	
	@Autowired
	public StudentDAOImpl studentImpl;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model) {

		ModelAndView modelAndView = new ModelAndView("home");
		return modelAndView;
	}

	

	@InitBinder
	public void initBinder(WebDataBinder binder)
	{
		//	binder.setDisallowedFields("mobno");
		/*SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		binder.registerCustomEditor(Date.class,"dob", new CustomDateEditor(dateFormat, false));*/
		binder.registerCustomEditor(String.class,"name",new StudentNameEditor());


	}

	@RequestMapping(value = "/register.html", method = RequestMethod.GET)
	public ModelAndView Register(Model model)
	{
		ModelAndView modelAndView = new ModelAndView("register");
		return modelAndView;
	}


	@ModelAttribute
	public void commonmessage(Model model)
	{

		model.addAttribute("commonmessage", "i am a spring developer");
	}



	@RequestMapping(value = "/submitregister.html", method = RequestMethod.POST)
	public ModelAndView submitregister(@Validated @ModelAttribute("student1") Student student ,BindingResult result )
	{
		if(result.hasErrors())
		{
			ModelAndView modelAndView = new ModelAndView("register");
			return modelAndView;
		}
		
		studentImpl.saveStudents(student);
		ModelAndView modelAndView = new ModelAndView("success");
		return modelAndView;
	}

}
