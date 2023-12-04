package com.skilldistillery.cookingcrimes.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.cookingcrimes.entities.CookingCrime;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class CookingCrimesDaoImpl implements CookingCrimesDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public CookingCrime findCookingCrimeById(int id) {
//		String jpql = "SELECT crime FROM CookingCrime crime WHERE id = '?'";
//		return em.createQuery(jpql, CookingCrime.class).getSingleResult();
		return em.find(CookingCrime.class, id);

	}

	@Override
	public List<CookingCrime> findAllCookingCrimes() {
		String jpql = "SELECT crime FROM CookingCrime crime";
		return em.createQuery(jpql, CookingCrime.class).getResultList();

	}

	@Override
	public CookingCrime createCookingCrime(CookingCrime cookingCrime) {
		em.persist(cookingCrime);
		return cookingCrime;
	}

	@Override
	public CookingCrime updateCookingCrime(CookingCrime cookingCrime) {
		CookingCrime cookingCrimeToBeChanged = em.find(CookingCrime.class, cookingCrime.getId());
		cookingCrimeToBeChanged.setFood(cookingCrime.getFood());
		cookingCrimeToBeChanged.setNickname(cookingCrime.getNickname());
		cookingCrimeToBeChanged.setDescription(cookingCrime.getDescription());
		cookingCrimeToBeChanged.setRecipe(cookingCrime.getRecipe());
		cookingCrimeToBeChanged.setLevelOfCrime(cookingCrime.getLevelOfCrime());
		cookingCrimeToBeChanged.setOverallCost(cookingCrime.getOverallCost());
		
		em.flush();
		
		return cookingCrimeToBeChanged;
	}

	@Override
	public boolean deleteCookingCrimeById(int id) {
		CookingCrime eraseThatCrime = em.find(CookingCrime.class, id);
		boolean erasedCrime = false;
		if (eraseThatCrime != null) {
			em.remove(eraseThatCrime);
			erasedCrime = !em.contains(eraseThatCrime);
			System.out.println("is the evil destroyed?" + erasedCrime);
		}
		return erasedCrime;
	
	}

}
