package com.online.food.service;

import java.util.List;

import com.online.food.model.Menu;
import com.online.food.model.Restaurant;

public interface RestaurantService 
{
	public Restaurant checkrestaurantlogin(String email, String pwd);
	public String addmenuitem(int rid, Menu menu);
	
	public List<Menu> getmenuitemsbyrestaurantid(int rid);
	public String deletemenuitem(int rid, int menuId);
}
