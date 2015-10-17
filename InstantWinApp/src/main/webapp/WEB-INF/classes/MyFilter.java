package com.winapp.support;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class MyFilter
 */
@WebFilter("/MyFilter")
public class MyFilter implements Filter {

   private static String uri = "";

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		int i = 0;
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse res = (HttpServletResponse)response;
		HttpSession session = req.getSession(false);
		try {
			if(!session.getAttribute("name").equals(null)) {
				i = 0;
				chain.doFilter(request, response);
			}
			
		}catch(Exception e) { 
			i=1;
			/*if((req.getRequestURL().toString().equals("http://localhost:8081/InstantWinAPP/Enter.jsp"))||
					(req.getRequestURL().toString().equals("http://localhost:8081/InstantWinAPP/RegistrationModel.jsp")) ||
					(req.getRequestURL().toString().equals("http://localhost:8081/InstantWinAPP/SignIn.jsp"))) {
					
					System.out.println(req.getRequestURI());
				
					uri = req.getServletPath();
					System.out.println("uri" + uri);
					chain.doFilter(request, response);
				}*/
			if(req.getServletPath().equals("/Enter.jsp") || req.getServletPath().equals("/RegistrationModel.jsp") || req.getServletPath().equals("/SignIn.jsp")) {
				uri = req.getServletPath();
				chain.doFilter(request, response);
			}
			else {
				if(uri.equals("/SignIn.jsp") && req.getServletPath().equals("/logincheck.jsp")) {
					/*System.out.println("elseblock");*/
					req.getRequestDispatcher("logincheck.jsp").forward(req, res);
					
				}
				else if(uri.equals("/RegistrationModel.jsp") && req.getServletPath().equals("/register.jsp")){
					/*System.out.println("elseblock");*/
					req.getRequestDispatcher("register.jsp").forward(req, res);
				}
				else if(uri.equals("/RegistrationModel.jsp") && req.getServletPath().equals("/userValidate.jsp")){
					/*System.out.println("elseblock1");*/
					req.getRequestDispatcher("userValidate.jsp").forward(req, res);
				}
				else if(uri.equals("/register.jsp") && req.getServletPath().equals("/logincheck.jsp")){
					/*System.out.println("elseblock1");*/
					req.getRequestDispatcher("logincheck.jsp").forward(req, res);
				}
				else if(uri.equals("/Enter.jsp") && req.getServletPath().equals("/result.jsp")){
					/*System.out.println("elseblock1");*/
					req.getRequestDispatcher("result.jsp").forward(req, res);
				}
					
				else {
					res.sendRedirect("Enter.jsp");
				}
			}
			/*res.sendRedirect("Enter.jsp");*/
		}
		
		
	
		

		// pass the request along the filter chain
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
