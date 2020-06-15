package com.cos.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.product.action.Action;
import com.cos.product.action.DeleteProcAction;
import com.cos.product.action.HomeAction;
@WebServlet("/prod")
public class ProductController extends HttpServlet{
        private final static String TAG = "ProductController";
        private static final long serialVersionUID = 1L;

        public ProductController() {
		  super();
	}
   
    @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doProcess(request, response);
        }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doProcess(request, response);
        
    }
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String cmd = request.getParameter("cmd"); 
       System.out.println(TAG +"router:" + cmd);
       Action action = router(cmd);
       action.execute(request, response);
 }
    
  public Action router(String cmd) { 
	   if(cmd.equals("home")) { 
		   return new HomeAction();
	   }else if(cmd.equals("deleteProc")) { 
		   return new DeleteProcAction();
	   }
	   return null;
  }
}
