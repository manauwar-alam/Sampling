package com.matrix.sampling.controller;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.matrix.sampling.model.CPS;
import com.matrix.sampling.service.CPS1ServiceImp;



@RestController
public class AppController {
	
	@Autowired
	CPS1ServiceImp service;
	
	
	@GetMapping(path= "/")
	public ModelAndView index(ModelMap model) {
		System.out.println(this.getClass().getSimpleName() + " - index controller is invoked.");
			model.addAttribute("msg", "Welcome to home page");
			ModelAndView modelview = new ModelAndView();
			modelview.setViewName("home");
			return modelview;
	}
	
	
	
	
	@GetMapping(path= "/index")
	public ModelAndView index1(ModelMap model) {
		System.out.println(this.getClass().getSimpleName() + " - Home controller is invoked.");
			model.addAttribute("msg", "Welcome to index page");
			ModelAndView modelview = new ModelAndView();
			modelview.setViewName("index");
			return modelview;
	}
	
	

	
	
	

	
	@RequestMapping(value = "/cps/update", method = RequestMethod.PUT)
    public ModelAndView showCPSUpdate(@RequestParam long id, ModelMap model) {
		
		CPS cps = service.getCPSByID(id).get();
		
		System.out.println("CPS for update : "+cps);
		
        model.put("cps", cps);
        populateForms(model);
        ModelAndView modelView = new ModelAndView();
		modelView.setViewName("cps");
		return modelView;	
    }
	
/*	@RequestMapping(value = "/epdetail/view", method = RequestMethod.GET)
    public ModelAndView viewEPDetail(@RequestParam long id, ModelMap model) {
		EPDetail epDetail = service.getEPDetailById(id).get();
        model.put("epDetail", epDetail);
        populateForms(model);
        ModelAndView modelView = new ModelAndView();
		modelView.setViewName("epdetail");
		return modelView;	
    }
	
*/	
	
	@GetMapping(path= "/home")
	public ModelAndView home(ModelMap model) {
		System.out.println(this.getClass().getSimpleName() + " - Home controller is invoked.");
			model.addAttribute("msg", "Welcome to home page");
			ModelAndView modelview = new ModelAndView();
			modelview.setViewName("home");
			return modelview;
	}
	
	

	
	
	@RequestMapping(value= "/cps1", method= RequestMethod.GET)
	public ModelAndView showAddCPS1(ModelMap model) {
		System.out.println(this.getClass().getSimpleName() + " - Show CPS1 controller is invoked.");
			model.addAttribute("CPS", new CPS());
			populateForms(model);
			ModelAndView modelView = new ModelAndView();
			modelView.setViewName("cps1");
			return modelView;	
	}
	
	
	@RequestMapping(value= "/cps1", method= RequestMethod.POST)
	public ModelAndView saveCPS1(ModelMap model, @ModelAttribute("CPS") @Validated CPS cps1, 
			BindingResult result, final RedirectAttributes redirectAttributes) {
		System.out.println(this.getClass().getSimpleName() + " - Create new epDetail method is invoked.");
		
		System.out.println("Date string is "+cps1.getOrderDate());
		
		
		 if (result.hasErrors()) {
			 populateForms(model);
			 ModelAndView modelView = new ModelAndView();
				modelView.setViewName("add-epdetail-new");
				return modelView;	
	        }
		 
		 else {
		
			 redirectAttributes.addFlashAttribute("css", "success");
			 CPS newCPS1 = service.saveCPS1(cps1);
			model.addAttribute("cps1", newCPS1);
			 ModelAndView modelView = new ModelAndView();
				modelView.setViewName("cps1");
				return modelView;	
				
		 }
			
	}
	
	
	@GetMapping(path= "/advanced-search/keyword")
	public ModelAndView showSearchByKeyword(ModelMap model) {
		System.out.println(this.getClass().getSimpleName() + " - showSearchByKeyword method is invoked.");
			model.addAttribute("msg", "Welcome to Advanced Search page");
			ModelAndView modelview = new ModelAndView();
			modelview.setViewName("search-by-keyword");
			return modelview;
	}
	
	@RequestMapping(value= "/cps1/search", method= RequestMethod.GET)
	public ModelAndView getCPSByKeyword(@RequestParam String keyword, ModelMap model) throws Exception {
		
		System.out.println(this.getClass().getSimpleName() + " -  getCPSByBA is invoked.");
		List<CPS> cps1List =  service.getCPSByBA(keyword);
		if(cps1List == null)
			throw new Exception("Could not find CPS for keyword - " + keyword);

	
		model.put("cps1List", cps1List);
		model.put("keyword", keyword);
		ModelAndView modelView = new ModelAndView();
		modelView.setViewName("search-by-keyword");
		return modelView;
		
	}
	
	
	void populateForms(ModelMap model) {
		Map<String, String> country = new LinkedHashMap<String, String>();
		country.put("India", "India");
		country.put("USA", "USA");
		country.put("UK", "UK");
		country.put("France", "France");
		country.put("Italy", "Italy");
		model.addAttribute("countryList", country);

		Map<String, String> epType = new LinkedHashMap<String, String>();
		epType.put("EP", "Emergency Package");
		epType.put("GEP", "Global Emergency Package");
		epType.put("TEP", "Temporary Emergency Package");
		epType.put("TP", "Test Package");
		model.addAttribute("epTypeList", epType);
		
		Map<String, String> skill = new LinkedHashMap<String, String>();
		skill.put("Skill1", "Skill Level 1");
		skill.put("Skill2", "Skill Level 2");
		skill.put("Skill3", "Skill Level 3");
		skill.put("Skill4", "Semi Skilled");
		skill.put("Skill5", "Unskilled");
		model.addAttribute("skillList", skill);
	}

}
