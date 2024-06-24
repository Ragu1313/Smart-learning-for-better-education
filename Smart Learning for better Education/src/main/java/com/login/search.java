package com.login;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.*;
import com.login.entity.Entity;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@SuppressWarnings("serial")
@WebServlet("/search")
public class search extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.getWriter().println("Hello...");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Entity> list = new ArrayList<Entity>();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			String table = request.getParameter("value");
			String sql = "Select tname,link,trating from "+table+" order by trating desc;";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","@Ragu2004");
			PreparedStatement ps = con.prepareStatement(sql);
	        ResultSet rs = ps.executeQuery();
	        out.print("Hello");
	        while(rs.next()) {
	        	Entity element = new Entity();
	        	element.setTname(rs.getString("tname"));
	        	element.setLink(rs.getString("link"));
	        	element.setRating(rs.getInt("trating"));
	        	list.add(element);
	        	out.print(rs.getString("tname"));     
	        }
	        HttpSession session =  request.getSession();
	        session.setAttribute("list", list);
	        session.setAttribute("table", table);
	        response.sendRedirect("content.jsp");
	        out.print("Hello");
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}
