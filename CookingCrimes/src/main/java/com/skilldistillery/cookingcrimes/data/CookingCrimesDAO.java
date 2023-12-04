package com.skilldistillery.cookingcrimes.data;

import java.util.List;

import com.skilldistillery.cookingcrimes.entities.CookingCrime;

public interface CookingCrimesDAO {
	CookingCrime findCookingCrimeById(int id);
	List<CookingCrime> findAllCookingCrimes();
	CookingCrime createCookingCrime(CookingCrime cookingCrime);
	CookingCrime updateCookingCrime(CookingCrime cookingCrime);
	boolean deleteCookingCrimeById(int id);
}
