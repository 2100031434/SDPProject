package com.online.food.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.food.model.Customer;
import com.online.food.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService
{
	@Autowired
	private CustomerRepository customerRepository;
	
	@Override
	public String addcustomer(Customer c) 
	{
		customerRepository.save(c);
		return "Registered Successfully!";
	}
	
	@Override
	public Customer checkcustomerlogin(String email, String pwd) 
	{
		return customerRepository.checkcustomerlogin(email, pwd);
	}

	@Override
	public Customer getcustomerbyid(int id) 
	{
		return customerRepository.findById(id).orElse(null);
	}

}
