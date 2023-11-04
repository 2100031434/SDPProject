package com.online.food.service;

import com.online.food.model.Customer;

public interface CustomerService 
{
	public String addcustomer(Customer c);
	public Customer checkcustomerlogin(String email, String pwd);
	public Customer getcustomerbyid(int id);
}
