package com.online.food.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.online.food.model.Orders;

public interface OrderRepository extends JpaRepository<Orders, Integer>
{

}
