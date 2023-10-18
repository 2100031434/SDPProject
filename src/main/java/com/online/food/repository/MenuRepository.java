package com.online.food.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.online.food.model.Menu;

public interface MenuRepository extends JpaRepository<Menu, Integer>
{

}
