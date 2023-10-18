package com.online.food.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.food.model.Admin;
import com.online.food.model.Customer;
import com.online.food.model.Restaurant;
import com.online.food.repository.AdminRepository;
import com.online.food.repository.CustomerRepository;
import com.online.food.repository.RestaurantRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private RestaurantRepository restaurantRepository;
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Override
	public Admin checkadminlogin(String uname, String pwd) 
	{
		return adminRepository.checkadminlogin(uname, pwd);
	}

	@Override
	public String addRestaurant(Restaurant r) 
	{
		restaurantRepository.save(r);
		return "Restaurant Added Successfully!";
	}

	@Override
	public List<Restaurant> getAllRestaurants() 
	{
		return restaurantRepository.findAll();
	}

	@Override
	public Restaurant getRestaurantById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Restaurant updateRestaurant(int id, String name, String address) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String deleteRestaurant(int id) 
	{
		Optional<Restaurant> obj =  restaurantRepository.findById(id);
        
        String msg = null;
        
        if(obj.isPresent())
        {
          Restaurant r = obj.get();
          
          restaurantRepository.delete(r);
          
          msg = "Restaurant Deleted Successfully";
        }
        else
        {
          msg = "Restaurant Not Found";
        }
        
        return msg;
	}

	@Override
	public List<Customer> getAllCustomers() 
	{
		return customerRepository.findAll();
	}

	@Override
	public String deleteCustomer(int id) 
	{
		Optional<Customer> obj =  customerRepository.findById(id);
        
        String msg = null;
        
        if(obj.isPresent())
        {
          Customer c = obj.get();
          
          customerRepository.delete(c);
          
          msg = "Customer Deleted Successfully";
        }
        else
        {
          msg = "Customer Not Found";
        }
        
        return msg;
	}
}
