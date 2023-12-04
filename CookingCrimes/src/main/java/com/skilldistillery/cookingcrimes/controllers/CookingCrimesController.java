package com.skilldistillery.cookingcrimes.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.cookingcrimes.data.CookingCrimesDAO;
import com.skilldistillery.cookingcrimes.entities.CookingCrime;

@Controller
public class CookingCrimesController {

	@Autowired
	private CookingCrimesDAO cookingCrimesDao;

	@RequestMapping(path = { "/", "home.do" }, method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("cookingList", cookingCrimesDao.findAllCookingCrimes());
		return "home";
	}

	@RequestMapping(path = { "getCookingCrime.do" }, method = RequestMethod.GET)
	public String showCookingCrime(@RequestParam ("cookId") int cookId, Model model) {
		CookingCrime cookingCrime = cookingCrimesDao.findCookingCrimeById(cookId);
		model.addAttribute("cookingCrime", cookingCrime);
		return "cookingCrime";
	}
	@RequestMapping(path = { "editCookingCrime.do" }, method = RequestMethod.GET)
	public String editCookingCrime(@RequestParam ("cookId") int cookId, Model model) {
		CookingCrime cookingCrime = cookingCrimesDao.findCookingCrimeById(cookId);
		model.addAttribute("cookingCrime", cookingCrime);
		return "editCookingCrime";
	}


	@RequestMapping(path = {"changeCookingCrime.do"}, method = RequestMethod.POST)
	public String updateCookingCrime(CookingCrime cookingCrime, Model model) {
			CookingCrime cookingCrimeUpdate = cookingCrimesDao.updateCookingCrime(cookingCrime);
			model.addAttribute("updpateCookingCrime", cookingCrimeUpdate);
		return "cookingCrimeUpdate";

	}
	@RequestMapping(path = {"deleteCookingCrime.do"}, method = RequestMethod.POST)
	public String deleteCookingCrime(@RequestParam ("cookId") int cookId) {
			Boolean cookingCrimeIsDeleted = cookingCrimesDao.deleteCookingCrimeById(cookId);
			if(cookingCrimeIsDeleted == true) {
				return "success";
			}
		return "fail";
	}
	
	@RequestMapping(path = {"createCookingCrime.do"}, method = RequestMethod.POST)
	public String createCookingCrime(CookingCrime cookingCrime, Model model) {
		CookingCrime cookingCrimeCreate = cookingCrimesDao.createCookingCrime(cookingCrime);
		model.addAttribute("cookingCrime",cookingCrimeCreate);
		return "cookingCrime";
	}
	@RequestMapping(path = { "addCookingCrime.do" }, method = RequestMethod.GET)
	public String addCookingCrime() {
		return "createCookingCrime";
	}
	
}