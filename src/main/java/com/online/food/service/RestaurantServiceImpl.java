package com.online.food.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.food.model.Menu;
import com.online.food.model.Restaurant;
import com.online.food.repository.MenuRepository;
import com.online.food.repository.RestaurantRepository;

@Service
public class RestaurantServiceImpl implements RestaurantService
{
	@Autowired
	private RestaurantRepository restaurantRepository;
	
	@Autowired
    private MenuRepository menuRepository;

	@Override
	public Restaurant checkrestaurantlogin(String email, String pwd) 
	{
		return restaurantRepository.checkrestaurantlogin(email, pwd);
	}

	@Override
	public String addmenuitem(int rid, Menu menu) 
	{
		try {
            Optional<Restaurant> optionalRestaurant = restaurantRepository.findById(rid);
            
            if (optionalRestaurant.isPresent()) {
                Restaurant restaurant = optionalRestaurant.get();
                
                // Set the relationship between the menu item and restaurant
                menu.setRestaurant(restaurant);
                restaurant.getMenuItems().add(menu);
                
                // Save the changes
                restaurantRepository.save(restaurant);
                
                return "Menu item added successfully.";
            } else {
                return "Restaurant not found.";
            }
        } catch (Exception e) {
            return "Failed to add menu item: " + e.getMessage();
        }
	}

	@Override
	public List<Menu> getmenuitemsbyrestaurantid(int rid) 
	{
		return menuRepository.findByRestaurantId(rid);
	}

	@Override
	public String deletemenuitem(int rid, int menuId) 
	{
		try {
	        Optional<Restaurant> optionalRestaurant = restaurantRepository.findById(rid);

	        if (optionalRestaurant.isPresent()) {
	            Restaurant restaurant = optionalRestaurant.get();

	            // Find the menu item by menuId
	            Optional<Menu> optionalMenu = menuRepository.findById(menuId);

	            if (optionalMenu.isPresent()) {
	                Menu menu = optionalMenu.get();

	                // Check if the menu item belongs to the restaurant
	                if (menu.getRestaurant().getId() == rid) {
	                    // Remove the menu item from the restaurant's menuItems list
	                    restaurant.getMenuItems().remove(menu);

	                    // Delete the menu item
	                    menuRepository.delete(menu);

	                    return "Menu item deleted successfully.";
	                } else {
	                    return "Menu item does not belong to the restaurant.";
	                }
	            } else {
	                return "Menu item not found.";
	            }
	        } else {
	            return "Restaurant not found.";
	        }
	    } catch (Exception e) {
	        return "Failed to delete menu item: " + e.getMessage();
	    }
	}

	@Override
	public List<Restaurant> findAllWithMenuItems() 
	{
		return restaurantRepository.findAllWithMenuItems();
	}
}
