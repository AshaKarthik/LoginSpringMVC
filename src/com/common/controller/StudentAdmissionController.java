package com.common.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.editor.customeditor.StudentNameEditor;
import com.entity.Student;
import com.sun.org.apache.xpath.internal.operations.String;

@Controller
public class StudentAdmissionController {

	@RequestMapping(value = "/admissionForm.html", method = RequestMethod.GET)
	public ModelAndView getAdmissionForm() {
		ModelAndView modelAndView = new ModelAndView("admissionForm");
		return modelAndView;
	}

	@ModelAttribute
	public void addCommonObjects(Model modelAndView) {
		modelAndView.addAttribute("msg", "VTU UNIVERSITY");
	}

	/**
	 * Do not bind student hobby
	 * 
	 * @param binder
	 */

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		java.lang.String[] disallowedFields = new java.lang.String[] { "studentHobby" };
		binder.setDisallowedFields(disallowedFields);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, "dateOfBirth",
				new CustomDateEditor(dateFormat, false));
		binder.registerCustomEditor(java.lang.String.class, "studentName",
				new StudentNameEditor());
	}

	@RequestMapping(value = "submitAdmissionForm.html", method = RequestMethod.POST)
	public ModelAndView submitAdmissionForm(
			@ModelAttribute("student1") Student student1,BindingResult result) {
		if(result.hasErrors()){
			ModelAndView modelAndView = new ModelAndView("admissionForm");
			return modelAndView;
		}
		ModelAndView modelAndView = new ModelAndView("admissionSuccess");
		return modelAndView;
	}
}
