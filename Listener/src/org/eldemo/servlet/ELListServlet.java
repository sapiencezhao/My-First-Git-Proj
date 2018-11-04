package org.eldemo.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eldemo.vo.Dept;

/**
 * Servlet implementation class ELListServlet
 */
@WebServlet("/ELListServlet")
public class ELListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ELListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Dept>all = new ArrayList<>();
		Dept dept = null;
		dept = new Dept();
		dept.setDeptno(10);
		dept.setDname("赵跃如");
		dept.setLoc("北京西城区");
		all.add(dept);
		dept = new Dept();
		dept.setDeptno(20);
		dept.setDname("SapienceZhao");
		dept.setLoc("北京	东城区");
		all.add(dept);
		request.setAttribute("alldept", all);
		request.getRequestDispatcher("dept_list.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.doGet(request, response);
	}

}
