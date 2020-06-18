package com.cos.product.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.product.model.Product;
import com.cos.product.repository.ProductRepository;
import com.google.gson.Gson;

public class FirstAction implements Action{
       @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	   ProductRepository productRepository = ProductRepository.getInstance();
   		List<Product> products = productRepository.findAll();
   		Gson gson = new Gson();
   		String tofirst = gson.toJson(products);
   		System.out.println("tofirst:" + tofirst);
   		response.setCharacterEncoding("utf-8");
   		PrintWriter out = response.getWriter();

   		out.print(tofirst);
    	
    }
}
