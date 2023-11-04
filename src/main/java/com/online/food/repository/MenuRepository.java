package com.online.food.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.online.food.model.Menu;

public interface MenuRepository extends JpaRepository<Menu, Integer>
{
	@Query("SELECT m FROM Menu m WHERE m.restaurant.id = :rid")
	List<Menu> findByRestaurantId(int rid);
}
