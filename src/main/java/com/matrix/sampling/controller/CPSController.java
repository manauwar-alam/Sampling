package com.matrix.sampling.controller;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.matrix.sampling.model.CPS;
import com.matrix.sampling.pagination.Pagination;
import com.matrix.sampling.service.CPSService;

@RestController
public class CPSController {
	
	@Autowired
	private CPSService cpsService;
	
	@RequestMapping(value= "/add-cps-stages", method= RequestMethod.GET)
	public ModelAndView showCPSInStages(ModelMap model) {
		
		
		System.out.println(this.getClass().getSimpleName() + " - Show CPS Stages controller is invoked.");
			model.addAttribute("CPS", new CPS());
			populateForms(model);
			ModelAndView modelView = new ModelAndView();
			modelView.setViewName("cps-section-1");
			return modelView;	
	}
	
	
	@RequestMapping(value= "/add-cps-stages", method= RequestMethod.POST)
	public ModelAndView saveCPSInStages(ModelMap model, @ModelAttribute("CPS") CPS cps, @RequestParam String stage) {
		
		
		if("1".equals(stage)) {

			System.out.println(this.getClass().getSimpleName() + " - Save CPS Stage 1 is invoked.");
			
			CPS cpsSaved = cpsService.createCPS(cps);
			System.out.println("Saved CPS : " + cpsSaved);
			model.addAttribute("CPS", cpsSaved);
			populateForms(model);
			model.addAttribute("msg", "Stage 1 saved for id : " + cpsSaved.getId());

			ModelAndView modelView = new ModelAndView();
			modelView.setViewName("cps-section-2");
			return modelView;

		} 
		else if("2".equals(stage)) {

			System.out.println(this.getClass().getSimpleName() + " - Save CPS Stage 2 is invoked.");
			
			CPS cpsSaved = cpsService.updateCPS(cps);
			System.out.println("Saved CPS : " + cpsSaved);
			model.addAttribute("CPS", cpsSaved);
			populateForms(model);
			model.addAttribute("msg", "Stage 2 saved for id : " + cpsSaved.getId());

			ModelAndView modelView = new ModelAndView();
			modelView.setViewName("cps-section-3");
			return modelView;

		}
		else if ("3".equals(stage)) {

			System.out.println(this.getClass().getSimpleName() + " - Save CPS Stage 3 is invoked.");

			CPS cpsSaved = cpsService.updateCPS(cps);
			
			CPS cpsComplete = cpsService.getCPSById(cpsSaved.getId()).get();
			
			System.out.println("Saved CPS : " + cpsComplete);
			model.addAttribute("CPS", cpsComplete);
			populateForms(model);
			model.addAttribute("msg", "Stage 3 saved for id : " + cpsComplete.getId());

			List<CPS> cpsList = new ArrayList<>();
			cpsList.add(cpsComplete);
			System.out.println("CPS list is : " + cpsList);
			model.put("cpsList", cpsList);

			ModelAndView modelView = new ModelAndView();
			modelView.setViewName("list-cps");
			return modelView;
		}
		else {
			
			System.out.println("Some error occured for stage : "+stage);
			
			ModelAndView modelView = new ModelAndView();
			modelView.setViewName("error");
			return modelView;
		}
				 
	}
	
	
	

	
	
	@RequestMapping(value= "/cps", method= RequestMethod.GET)
	public ModelAndView showCPS(ModelMap model) {
		System.out.println(this.getClass().getSimpleName() + " - Show CPS controller is invoked.");
			model.addAttribute("CPS", new CPS());
			populateForms(model);
			ModelAndView modelView = new ModelAndView();
			modelView.setViewName("save-cps");
			return modelView;	
	}
	
	@RequestMapping(value= "/cps", method= RequestMethod.POST)
	public ModelAndView saveCPS(ModelMap model, @ModelAttribute("CPS") CPS cps) {
		
		System.out.println(this.getClass().getSimpleName() + " - Save CPS method is invoked.");
		System.out.println("CPS String : "+cps);
			
			 CPS newCPS = cpsService.createCPS(cps);
			 List<CPS> cpsList = new  ArrayList<>();
			 cpsList.add(newCPS);
			 
			 System.out.println("CPS list is : "+cpsList);
			 
			model.put("cpsList", cpsList);
			 ModelAndView modelView = new ModelAndView();
				modelView.setViewName("list-cps");
				return modelView;		 
			
	}
	
	
	@RequestMapping(value = "/update-cps", method = RequestMethod.GET)
	public ModelAndView showUpdateCPSPage(@RequestParam long id, ModelMap model) {
		
		System.out.println("Show Update CPS Page");
       
		CPS cps = cpsService.getCPSById(id).get();
        model.addAttribute("CPS", cps); 
        populateForms(model);
        ModelAndView modelView = new ModelAndView();
		modelView.setViewName("update-cps");
		return modelView;
    }
	
	
	@RequestMapping(value = "/update-cps", method = RequestMethod.POST)
	public ModelAndView updateCPS(ModelMap model, @ModelAttribute("CPS") CPS cps) {
		
		System.out.println("Update CPS Page");
       		
		CPS updatedCPS = cpsService.updateCPS(cps);
		
		List<CPS> cpsList = new  ArrayList<>();
		 cpsList.add(updatedCPS);
		 
		 System.out.println("CPS list is : "+cpsList);
		 
		model.put("cpsList", cpsList);
		model.put("msg", "Updated Successfully");
        ModelAndView modelView = new ModelAndView();
		modelView.setViewName("list-cps");
		return modelView;
		
		
    }
	
	
	@RequestMapping(value = "/delete-cps", method = RequestMethod.GET)
	public ModelAndView deleteCPS(@RequestParam long id, ModelMap model) {
		
		System.out.println("Delete CPS");
       
		CPS cps = cpsService.getCPSById(id).get();
       // model.addAttribute("CPS", cps); 
       // populateForms(model);
		
		cpsService.deleteCPS(cps);
		String msg = "Deleted for BA : "+cps.getBA();
		System.out.println("CPS : "+msg);
		model.put("msg", msg);
        ModelAndView modelView = new ModelAndView();
		modelView.setViewName("pagination");
		return modelView;
    }
	
		
	
	/*
	 * @GetMapping(path= "/search/keyword") public ModelAndView
	 * showSearchByKeyword(ModelMap model) {
	 * System.out.println(this.getClass().getSimpleName() +
	 * " - showSearchByKeyword method is invoked."); //model.addAttribute("msg",
	 * "Search by Buying Agency"); ModelAndView modelview = new ModelAndView();
	 * modelview.setViewName("search-cps"); return modelview; }
	 */
	
	/*
	 * @RequestMapping(value= "/cps/search", method= RequestMethod.GET) public
	 * ModelAndView getCPSByKeyword(@RequestParam String keyword, ModelMap model)
	 * throws Exception {
	 * 
	 * System.out.println(this.getClass().getSimpleName() +
	 * " -  Search for keyword : "+keyword); List<CPS> cpsList =
	 * cpsService.getByBA(keyword); if(cpsList == null) throw new
	 * Exception("Could not find CPS for keyword - " + keyword);
	 * 
	 * 
	 * model.put("cpsList", cpsList); model.put("keyword", keyword); ModelAndView
	 * modelView = new ModelAndView(); modelView.setViewName("search-cps"); return
	 * modelView;
	 * 
	 * }
	 */
	
	@GetMapping(value="/page/{pageNo}")
	public ModelAndView findPaginated(@PathVariable(value ="pageNo") int pageNo, 
			@RequestParam("sortField") String sortField, 
			@RequestParam("sortDir") String sortDir,
			ModelMap map) {
		
		int pageSize = 5;
		Page<CPS> page = cpsService.findPaginated(pageNo,pageSize, sortField, sortDir);
		List<CPS> listCPS = page.getContent();
		map.put("currentPage",pageNo);
		map.put("totalPages", page.getTotalPages());
		map.put("totalItems", page.getTotalElements());
		map.put("listCPS", listCPS);
		map.put("sortField",sortField);
		map.put("sortDir",sortDir);
		map.put("reverseSortDir",sortDir.equals("asc") ? "desc" : "asc");
		
		ModelAndView modelView = new ModelAndView();
		modelView.setViewName("all-cps");
		return modelView;
		
	}
	
	
	@GetMapping(path= "/cps/search/keyword")
	public ModelAndView showPagination(ModelMap map, HttpSession session) {
		
		System.out.println(this.getClass().getSimpleName() + " - show pagination method is invoked.");
		List<CPS> listCPS = null;
		map.put("listCPS", listCPS);
		session.setAttribute("listCPS", listCPS);
		ModelAndView modelview = new ModelAndView();
		modelview.setViewName("pagination");
		return modelview;
	}

	
	@SuppressWarnings("unchecked")
	@GetMapping(value="/pagination/{pageNo}")
	public ModelAndView pagination(@PathVariable(value ="pageNo") int pageNo, ModelMap map, HttpServletRequest request) {
			//@RequestParam("sortField") String sortField, 
			//@RequestParam("sortDir") String sortDir,
		/*@RequestParam("BA") String BA*/
		String keyword = request.getParameter("keyword");
		System.out.println(this.getClass().getSimpleName() + " -  Search for keyword : "+keyword);
			
		int pageSize = 5;
		List<CPS> listCPS;
		if(request.getSession().getAttribute("listCPS") == null || "".equals(request.getSession().getAttribute("listCPS")) || pageNo == 1) {
			
			listCPS = cpsService.getByBA(keyword);
			System.out.println("Creating new list CPS : "+listCPS.hashCode());
		}
		else {
			
			listCPS =  (List<CPS>)request.getSession().getAttribute("listCPS");
			System.out.println("Getting list CPS from session : "+ listCPS.hashCode());
		}
		
			
		List<CPS> listCPSPerPage = Pagination.getCPSForCurrentPage(pageNo, pageSize, listCPS);
		int totalItems = listCPS.size();
		int totalPages = totalItems/pageSize;
		if(totalItems%pageSize > 0)
			totalPages++;
		
		map.put("currentPage",pageNo);
		map.put("totalPages", totalPages);
		map.put("totalItems", totalItems);
		map.put("listCPS", listCPSPerPage);
		request.getSession().setAttribute("listCPS", listCPS);
		map.put("keyword", keyword);
		
		System.out.println("Page No : "+pageNo);
		System.out.println("totalPages : "+totalPages);
		System.out.println("totalItems : "+totalItems);
		
		ModelAndView modelView = new ModelAndView();
		modelView.setViewName("pagination");
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
		
		Map<String, String> areaUnit = new LinkedHashMap<String, String>();
		areaUnit.put("cm", "square cm");
		areaUnit.put("inch", "square inch");
		model.addAttribute("areaUnitList", areaUnit);
	}
	
	
	
	
}
