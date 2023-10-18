package com.online.food.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.food.model.Restaurant;
import com.online.food.repository.RestaurantRepository;

@Service
public class RestaurantServiceImpl implements RestaurantService
{
	@Autowired
	private RestaurantRepository restaurantRepository;

	@Override
	public Restaurant checkrestaurantlogin(String email, String pwd) 
	{
		return restaurantRepository.checkrestaurantlogin(email, pwd);
	}
}
