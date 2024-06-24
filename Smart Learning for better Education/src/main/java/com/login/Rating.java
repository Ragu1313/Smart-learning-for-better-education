package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/rating")
public class Rating extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Rating() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
//		PrintWriter out = response.getWriter();
		String table = request.getParameter("table");
		String teachername = request.getParameter("teacher");
		int userrating =Integer.parseInt( request.getParameter("rating"));
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","@Ragu2004");
			PreparedStatement ps1 = con.prepareStatement("Select * from "+table+" where tname = ? ");
			ps1.setString(1, teachername);
			ResultSet rs1 = ps1.executeQuery();
			int newvalue = 0 ;
			if(rs1.next()) {
				int oldvalue = rs1.getInt("trating");
				newvalue = (oldvalue+userrating)/2;
				PreparedStatement ps2 = con.prepareStatement("Update "+table+" set trating = ? where tname = ?");
      		    ps2.setInt(1, newvalue);
      		    ps2.setString(2, teachername);
      		    ps2.executeUpdate();
			}
			response.sendRedirect("Thankyou.jsp");
		
//			ps2.setInt(, 0)t
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}
