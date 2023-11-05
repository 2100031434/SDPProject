package com.online.food.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.online.food.model.Admin;
import com.online.food.model.Customer;
import com.online.food.model.Menu;
import com.online.food.model.Restaurant;
import com.online.food.service.AdminService;
import com.online.food.service.CustomerService;
import com.online.food.service.RestaurantService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private RestaurantService restaurantService;
	
	@GetMapping("/")
	public String main() 
	{
		return "index";
	}
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("adminlogin");
	    return mv;
	}
	
	@GetMapping("adminlogout")
	public ModelAndView adminlogout(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("adminlogin");
	    return mv;
	}
	
	@GetMapping("adminaccount")
	public ModelAndView adminaccount()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("adminaccount");
	    return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		
		Admin a = adminService.checkadminlogin(uname, pwd);
		
		if(a != null)
		{
			mv.setViewName("adminhome");
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("message", "Login Failed");
		}
		
		return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("adminhome");
	    return mv;
	}
	
	@GetMapping("customerlogin")
	public ModelAndView customerlogin()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("customerlogin");
	    return mv;
	}
	
	@GetMapping("customerregister")
	public ModelAndView customerregister()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("customerregister");
	    return mv;
	}
	
	@PostMapping("register")
	public ModelAndView addcustomer(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String msg = null;
		
		try 
		{
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			String email = request.getParameter("email");
			String pwd = request.getParameter("pwd");
			String contact = request.getParameter("contactno");
			String address = request.getParameter("address");
			
			Customer c = new Customer();
			
			c.setName(name);
			c.setGender(gender);
			c.setEmail(email);
			c.setPassword(pwd);
			c.setAddress(address);
			c.setContactno(contact);
			
			msg = customerService.addcustomer(c);
			
			mv.setViewName("customerlogin");
			mv.addObject("successMessage", msg);
		} 
		catch (Exception e) 
		{
			msg = e.getMessage();
			
			mv.setViewName("customerregister");
			mv.addObject("errorMessage", "User Already Exists!");
		}
		
		return mv;
	}
	
	@PostMapping("checkcustomerlogin")
	public ModelAndView checkcustomerlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		Customer c = customerService.checkcustomerlogin(email, pwd);
		
		if(c != null)
		{
			//session 
			HttpSession session = request.getSession();
			session.setAttribute("id", c.getId()); // id is a session variable
			session.setAttribute("name", c.getName()); // name is a session variable
			//session
			List<Restaurant> rlist = adminService.getAllRestaurants();
			mv.addObject("rdata", rlist);
			mv.setViewName("customerdashboard");
			mv.addObject("name", c.getName());
		}
		else
		{
			mv.setViewName("customerlogin");
			mv.addObject("errorMessage", "Invalid Credentials");
		}
		
		return mv;
	}
	
	@GetMapping("customerdashboard")
	public ModelAndView customerdashboard(HttpServletRequest request)
	{
		//session 
		HttpSession session = request.getSession();
		Integer id = (Integer) session.getAttribute("id"); // id is a session variable
		String name = (String) session.getAttribute("name"); // name is a session variable
		//session
		
		if (name == null || id == null)
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("customerlogin");
			mv.addObject("sessionMessage", "Session Expired!");
			return mv;
		}
		
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("customerdashboard");
	    
	    mv.addObject("id", (int)id);
	    mv.addObject("name", name);
		
		List<Restaurant> rlist = restaurantService.findAllWithMenuItems();
	    mv.addObject("rdata", rlist);
		
	    return mv;
	}
	
	@GetMapping("viewmenu/{rid}")
	public ModelAndView viewmenu(@PathVariable("rid") int rid, HttpServletRequest request)
	{
		//session 
		HttpSession session = request.getSession();
		Integer id = (Integer) session.getAttribute("id"); // id is a session variable
		String name = (String) session.getAttribute("name"); // name is a session variable
		Customer customer = customerService.getcustomerbyid(id);
		//session
				
		if (name == null || id == null || customer == null)
		{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerlogin");
		mv.addObject("sessionMessage", "Session Expired!");
		return mv;
		}
		
		ModelAndView mv = new ModelAndView();
		List<Menu> menuItems = restaurantService.getmenuitemsbyrestaurantid(rid);
        mv.addObject("menuItems", menuItems);
        
	    return mv;
	}
	
	@GetMapping("customercart")
	public ModelAndView customercart( HttpServletRequest request)
	{
		//session 
		HttpSession session = request.getSession();
		Integer id = (Integer) session.getAttribute("id"); // id is a session variable
		String name = (String) session.getAttribute("name"); // name is a session variable
		Customer customer = customerService.getcustomerbyid(id);
		//session
				
		if (name == null || id == null || customer == null)
		{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerlogin");
		mv.addObject("sessionMessage", "Session Expired!");
		return mv;
		}
		
		ModelAndView mv = new ModelAndView("customercart");
       
        
	    return mv;
	}
	
	@GetMapping("customerorders")
	public ModelAndView customerorders( HttpServletRequest request)
	{
		//session 
		HttpSession session = request.getSession();
		Integer id = (Integer) session.getAttribute("id"); // id is a session variable
		String name = (String) session.getAttribute("name"); // name is a session variable
		Customer customer = customerService.getcustomerbyid(id);
		//session
				
		if (name == null || id == null || customer == null)
		{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerlogin");
		mv.addObject("sessionMessage", "Session Expired!");
		return mv;
		}
		
		ModelAndView mv = new ModelAndView("customerorders");
       
        
	    return mv;
	}
	
	
	
	
	@GetMapping("customerprofile")
	public ModelAndView customerprofile(HttpServletRequest request)
	{
		//session 
		HttpSession session = request.getSession();
		Integer id = (Integer) session.getAttribute("id"); // id is a session variable
		String name = (String) session.getAttribute("name"); // name is a session variable
		Customer customer = customerService.getcustomerbyid(id);
		//session
				
		if (name == null || id == null || customer == null)
		{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerlogin");
		mv.addObject("sessionMessage", "Session Expired!");
		return mv;
		}
		
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("customerprofile");
	    mv.addObject("customer", customer);
	    return mv;
	}
	
	
	@GetMapping("customerlogout")
	public ModelAndView customerlogout(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		session.removeAttribute("id");
		session.removeAttribute("name");
		session.invalidate();
		
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("customerlogin");
	    mv.addObject("successMessage", "Logged Out Successfully!");
	    return mv;
	}
	
	@GetMapping("managerestaurants")
	public ModelAndView managerestaurants()
	{
		ModelAndView mv = new ModelAndView("managerestaurants");
		List<Restaurant> rlist = adminService.getAllRestaurants();
		mv.addObject("rdata", rlist);
		return mv;
	}
	
	@GetMapping("update/{id}")
    public ModelAndView update(@PathVariable("id") int id)
    {
      ModelAndView mv = new ModelAndView("updaterestaurants");
      
      Restaurant r = adminService.getRestaurantById(id);
      
      mv.addObject("restaurant", r);
      
      return mv;
    }
    
    @PostMapping("update/update")
    public ModelAndView updateaction(HttpServletRequest request)
    {
      String msg = null;
      
      ModelAndView mv = new ModelAndView();
      mv.setViewName("redirect:/managerestaurants");
      
     try
     {
       String name = request.getParameter("name");
       String email = request.getParameter("email");
       String pwd = request.getParameter("pwd");
       String contactno = request.getParameter("contactno");
       String address = request.getParameter("address");
       String active = request.getParameter("active");
       boolean status = Boolean.parseBoolean(active);
       
       Restaurant r = new Restaurant();
       r.setName(name);
       r.setEmail(email);
       r.setPassword(pwd);
       r.setContactno(contactno);
       r.setAddress(address);
       r.setActive(status);
       
       msg = adminService.updateRestaurant(r);
        
       mv.addObject("successMessage",msg);
       
     }
     catch(Exception e)
     {
       msg = e.getMessage();
       
       mv.setViewName("managerestaurants");
       mv.addObject("errorMessage",msg);
     }
      
      return mv;

    }
	
	@GetMapping("manageorders")
	public ModelAndView manageorders()
	{
		ModelAndView mv = new ModelAndView("manageorders");
		return mv;
	}
	
	@GetMapping("managecustomers")
	public ModelAndView managecustomers()
	{
		ModelAndView mv = new ModelAndView("managecustomers");
		List<Customer> clist = adminService.getAllCustomers();
		mv.addObject("cdata", clist);
		return mv;
	}
	
	@GetMapping("manageitems")
	public ModelAndView managemenuitems()
	{
		ModelAndView mv = new ModelAndView("manageitems");
		return mv;
	}
	
	@GetMapping("manageaccount")
	public ModelAndView manageaccount()
	{
		ModelAndView mv = new ModelAndView("manageaccount");
		return mv;
	}
	
	@PostMapping("addrestaurant")
	public ModelAndView addrestaurant(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String msg = null;
		
		try 
		{
			String name = request.getParameter("restaurantName");
			String email = request.getParameter("restaurantEmail");
			String password = request.getParameter("restaurantPassword");
			String contactno = request.getParameter("restaurantPhoneNumber");
			String address = request.getParameter("restaurantAddress");
			
			Restaurant r = new Restaurant();
			
			r.setName(name);
			r.setEmail(email);
			r.setPassword(password);
			r.setContactno(contactno);
			r.setAddress(address);
			r.setActive(true);
			
			msg = adminService.addRestaurant(r);
			mv.setViewName("managerestaurants");
			mv.addObject("successMessage", msg);
		} 
		catch (Exception e) 
		{
			msg = e.getMessage();
			
			mv.setViewName("managerestaurants");
			mv.addObject("errorMessage", "Restaurant Already Exists!");
		}
		
		List<Restaurant> rlist = adminService.getAllRestaurants();
		mv.addObject("rdata", rlist);
		
		return mv;
	}
	
	@GetMapping("delete/{id}")
	public String deleterestaurant(@PathVariable("id") int id)
	{
		adminService.deleteRestaurant(id);
		return "redirect:/managerestaurants";
	}
	
	@GetMapping("deletecustomer/{id}")
	public String deletecustomer(@PathVariable("id") int id)
	{
		adminService.deleteCustomer(id);
		return "redirect:/managecustomers";
	}
	
	@GetMapping("restaurantlogin")
	public ModelAndView restaurantlogin()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("restaurantlogin");
	    return mv;
	}
	
	@PostMapping("checkrestaurantlogin")
	public ModelAndView checkrestaurantlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		Restaurant r = restaurantService.checkrestaurantlogin(email, pwd);
		
		if(r != null)
		{
			mv.setViewName("restaurantdashboard");
			//session 
			HttpSession session = request.getSession();
			session.setAttribute("rid", r.getId()); // rid is a session variable
			session.setAttribute("rname", r.getName()); // rname is a session variable
			//session
		}
		else
		{
			mv.setViewName("restaurantlogin");
			mv.addObject("message", "Login Failed");
		}
		
		return mv;
	}
	
	@GetMapping("restaurantdashboard")
	public ModelAndView restaurantdashboard(HttpServletRequest request, HttpSession session)
	{
		ModelAndView mv = new ModelAndView();
		
		// Get the restaurant ID from the session
        Integer rid = (Integer) session.getAttribute("rid");
        if (rid == null) {
            mv.setViewName("restaurantlogin");
            mv.addObject("errorMessage", "Session Expired!");
            return mv;
        }
        
	    mv.setViewName("restaurantdashboard");
	    return mv;
	}
	
	@GetMapping("restaurantorders")
	public ModelAndView restaurantorders(HttpSession session)
	{
		ModelAndView mv = new ModelAndView();
		
		// Get the restaurant ID from the session
        Integer rid = (Integer) session.getAttribute("rid");
        if (rid == null) {
            mv.setViewName("restaurantlogin");
            mv.addObject("errorMessage", "Session Expired!");
            return mv;
        }
        
	    mv.setViewName("restaurantorders");
	    return mv;
	}
	
	@GetMapping("managemenu")
	public ModelAndView managemenu(HttpSession session)
	{
		ModelAndView mv = new ModelAndView();
		
		// Get the restaurant ID from the session
        Integer rid = (Integer) session.getAttribute("rid");
        if (rid == null) {
            mv.setViewName("restaurantlogin");
            mv.addObject("errorMessage", "Session Expired!");
            return mv;
        }
        
	    List<Menu> menuItems = restaurantService.getmenuitemsbyrestaurantid(rid);
        mv.addObject("menuItems", menuItems);
        mv.setViewName("managemenu");
	    return mv;
	}
	
	@PostMapping("addmenuitem")
	public ModelAndView addMenuItem(HttpServletRequest request, HttpSession session) {
	    ModelAndView mv = new ModelAndView();
	    
	    // Get the restaurant ID from the session
        Integer rid = (Integer) session.getAttribute("rid");
        if (rid == null) {
            mv.setViewName("restaurantlogin");
            mv.addObject("errorMessage", "Session Expired!");
            return mv;
        }

	    try {
	        String name = request.getParameter("itemName");
	        String category = request.getParameter("itemCategory");
	        String description = request.getParameter("itemDescription");
	        double price = Double.parseDouble(request.getParameter("itemPrice"));

	        // Create a new menu item
	        Menu menu = new Menu();
	        menu.setItemName(name);
	        menu.setCategory(category);
	        menu.setDescription(description);
	        menu.setPrice(price);
	 

	        // Call a service method to add the menu item
	        String msg = restaurantService.addmenuitem(rid, menu);
	        
	        // Get the updated list of menu items
	        List<Menu> menuItems = restaurantService.getmenuitemsbyrestaurantid(rid);

			mv.addObject("successMessage", msg);
			mv.addObject("menuItems", menuItems);
			mv.setViewName("managemenu");
	    } catch (Exception e) {
	    	// Get the updated list of menu items
	        List<Menu> menuItems = restaurantService.getmenuitemsbyrestaurantid(rid);

			mv.addObject("errorMessage", "Failed to Add");
			mv.addObject("menuItems", menuItems);
			mv.setViewName("managemenu");
	    }
	    
	    return mv;
	}
	
	@GetMapping("deletemenuitem/{menuId}")
	public String deleteMenuItem(@PathVariable int menuId, HttpSession session) {
	    // Get the restaurant ID from the session
	    Integer rid = (Integer) session.getAttribute("rid");
	    if (rid == null) {
	        return "redirect:/restaurantlogin";
	    }

	    try {
	        // Call a service method to delete the menu item
	        String msg = restaurantService.deletemenuitem(rid, menuId);
	        session.setAttribute("successMessage", msg);
	    } catch (Exception e) {
	        session.setAttribute("errorMessage", "Failed to delete menu item");
	    }

	    return "redirect:/managemenu";
	}
	
	@GetMapping("restaurantaccount")
	public ModelAndView restaurantaccount(HttpSession session)
	{
		ModelAndView mv = new ModelAndView();
		
		// Get the restaurant ID from the session
        Integer rid = (Integer) session.getAttribute("rid");
        if (rid == null) {
            mv.setViewName("restaurantlogin");
            mv.addObject("errorMessage", "Session Expired!");
            return mv;
        }
        Restaurant restaurant = adminService.getRestaurantById(rid);
        
	    mv.setViewName("restaurantaccount");
	    mv.addObject("restaurant", restaurant);
	    return mv;
	}
	
	@GetMapping("restaurantlogout")
	public ModelAndView restaurantlogout(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		session.removeAttribute("rid");
		session.removeAttribute("rname");
		session.invalidate();
		
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("restaurantlogin");
	    mv.addObject("successMessage", "Logged Out Successfully!");
	    return mv;
	}
	
	
}
