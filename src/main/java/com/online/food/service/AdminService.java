package com.online.food.service;

import java.util.List;

import com.online.food.model.Admin;
import com.online.food.model.Customer;
import com.online.food.model.Restaurant;

public interface AdminService 
{
	public Admin checkadminlogin(String uname, String pwd);
	
	public List<Customer> getAllCustomers();
	public String deleteCustomer(int id);
	
	public String addRestaurant(Restaurant r);
	public List<Restaurant> getAllRestaurants();
    public Restaurant getRestaurantById(int id);
    public String updateRestaurant(Restaurant restaurant);
    public String deleteRestaurant(int id);
}
