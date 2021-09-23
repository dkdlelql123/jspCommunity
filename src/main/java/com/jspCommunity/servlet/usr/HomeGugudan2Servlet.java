package com.jspCommunity.servlet.usr;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Dispatch;

@WebServlet("/usr/home/gugudan2")
public class HomeGugudan2Servlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8"); 
		
		if(req.getParameter("dan") == null) {
			resp.getWriter().append("구구단을 입력해주세요.");
			return;
		}

		int dan = Integer.parseInt(req.getParameter("dan"));
		
		req.setAttribute("dan", dan);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/jsp/usr/home/gugudan2.jsp");
		dispatcher.forward(req, resp);
		
	}	
}
