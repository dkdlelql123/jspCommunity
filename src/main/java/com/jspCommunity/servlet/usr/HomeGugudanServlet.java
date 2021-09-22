package com.jspCommunity.servlet.usr;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/usr/home/gugudan")
public class HomeGugudanServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8"); 
		
		if(req.getParameter("dan") == null) {
			resp.getWriter().append("구구단을 입력해주세요.");
			return;
		}

		int dan = Integer.parseInt(req.getParameter("dan"));
		
		resp.getWriter().append("<h2>"+String.format("구구단은? %d단",dan)+"</h2>");
		
		for(int a = 1; a <= 19; a++) {
			resp.getWriter().append("<div>"+String.format("%d * %d = %d",dan, a, dan*a)+"<div>");			
		}
	}	
}
