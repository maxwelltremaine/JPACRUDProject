package com.skilldistillery.cookingcrimes.entities;

import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "cooking_crime")
public class CookingCrime {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String food;
	private String nickname;
	private String description;
	private String recipe;
	@Column(name = "level_of_crime")
	private String levelOfCrime;
	@Column(name = "overall_cost")
	private String overallCost;

	public CookingCrime() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFood() {
		return food;
	}

	public void setFood(String food) {
		this.food = food;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getRecipe() {
		return recipe;
	}

	public void setRecipe(String recipe) {
		this.recipe = recipe;
	}

	public String getLevelOfCrime() {
		return levelOfCrime;
	}

	public void setLevelOfCrime(String levelOfCrime) {
		this.levelOfCrime = levelOfCrime;
	}

	public String getOverallCost() {
		return overallCost;
	}

	public void setOverallCost(String overallCost) {
		this.overallCost = overallCost;
	}

	@Override
	public int hashCode() {
		return Objects.hash(description, food, id, levelOfCrime, nickname, overallCost, recipe);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CookingCrime other = (CookingCrime) obj;
		return Objects.equals(description, other.description) && Objects.equals(food, other.food) && id == other.id
				&& Objects.equals(levelOfCrime, other.levelOfCrime) && Objects.equals(nickname, other.nickname)
				&& Objects.equals(overallCost, other.overallCost) && Objects.equals(recipe, other.recipe);
	}

	@Override
	public String toString() {
		return "CookingCrime [id=" + id + ", food=" + food + ", nickname=" + nickname + ", description=" + description
				+ ", recipe=" + recipe + ", levelOfCrime=" + levelOfCrime + ", overallCost=" + overallCost + "]";
	}
}
