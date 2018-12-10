package com.itfq.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itfq.dao.JoinAssociationDao;

/**
 * @author LiaoF  E-mail: LiaoFuQin@QQ.com
 * @version 创建时间：2018年12月9日  下午2:24:27
 * tags
 */
public class joinAssociation extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		ServletContext application = this.getServletConfig().getServletContext();
		String studentId = (String) application.getAttribute("Student");
		if(studentId==null) {
			request.getRequestDispatcher("/jsp/verification/NotLoggedIn.jsp").forward(request, response);
		}
		System.out.println(studentId);
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		
		String aString=JoinAssociationDao.join(studentId, id);
		if(aString.equals("false")) {
			response.getWriter().write("你已加入该协会");;
		}else if(aString.equals("true")){
			request.getRequestDispatcher("/jsp/verification/JoinAssociation.jsp").forward(request, response);
		}
		System.out.println(aString);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
