package com.sbs.example.jspCommunity;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet("/HomeGugudanServlet")
public class HomeGugudanServlet extends HttpServlet { 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8"); 
		
		if(request.getParameter("dan") == null) {
			response.getWriter().append("구구단을 입력해주세요.");
			return;
		}

		int dan = Integer.parseInt(request.getParameter("dan"));
		
		response.getWriter().append("<h2>"+String.format("구구단은? %d단",dan)+"</h2>");
		
		for(int a = 1; a <= 19; a++) {
			response.getWriter().append("<div>"+String.format("%d * %d = %d",dan, a, dan*a)+"<div>");			
		}
	}  
}
