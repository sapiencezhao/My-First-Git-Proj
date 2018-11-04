package org.ajaxdemo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CheckServlet")
public class CheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String DBDRIVER = "com.mysql.jdbc.Driver";
	public static final String DBURL = "jdbc:mysql://localhost:3306/mldn";
	public static final String DBUSER = "root";
	public static final String DBPASS = "Shen241022";
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("GBK");
		resp.setContentType("text/html");
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		PrintWriter out = resp.getWriter();
		String userid = req.getParameter("userid");
		
		try {
			Class.forName(DBDRIVER);
			con = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
			String sql = "select count(userid) from user where userid=?";
			pst = con.prepareStatement(sql);
			pst.setString(1, userid);
			rs = pst.executeQuery();
			if(rs.next()) {
				if(rs.getInt(1)>0) {
					out.print("true");
				}else {
					out.print("false");
				}
				
			}
			out.close();
		} catch (Exception e) {
			
			e.printStackTrace();
		
		}finally {
			
				try {
					con.close();
				} catch (Exception e) {
					
					e.printStackTrace();
				}
			}
		}

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		this.doGet(req, resp);
	}

}
