package com.rose.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rose.models.Item;

@Controller
public class ItemController {
	
	@RequestMapping("/")
	public String index(Model model) {
		ArrayList<Item> fruits = new ArrayList<Item>();
		
		fruits.add(new Item());
		fruits.add(new Item("Mango", 2.50));
		fruits.add(new Item("Strawberry", 3.00));
		fruits.add(new Item("Pineapple", 2.75));
		fruits.add(new Item("Banana", 2.00));
		fruits.add(new Item("Avocado",4.50));
		model.addAttribute("myfruits", fruits);
		
		return "index.jsp";
	}
}
