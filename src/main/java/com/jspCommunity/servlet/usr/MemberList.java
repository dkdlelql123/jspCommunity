package com.jspCommunity.servlet.usr;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sbs.example.mysqlutil.MySqlUtil;
import com.sbs.example.mysqlutil.SecSql;
 
@WebServlet("/usr/member/list")
public class MemberList extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.setCharacterEncoding("UTF-8");
	resp.setContentType("text/html; charset=UTF-8");
	
	MySqlUtil.setDBInfo("127.0.0.1", "root", "", "jspCommunity");
	
	List<Map<String, Object>> memberMapList = MySqlUtil.selectRows(new SecSql().append("SELECT * FROM MEMBER ORDER BY id DESC"));
	System.out.println(memberMapList );
	
	req.setAttribute("memberMapList", memberMapList );
	
	req.getRequestDispatcher("/jsp/usr/member/list.jsp").forward(req, resp);
	
	MySqlUtil.closeConnection();
	
	}
}
