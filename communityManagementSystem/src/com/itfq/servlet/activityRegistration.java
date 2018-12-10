package com.itfq.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author LiaoF  E-mail: LiaoFuQin@QQ.com
 * @version 创建时间：2018年12月9日  下午8:42:05
 * tags
 */
public class activityRegistration extends HttpServlet {

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
		
		int aaid= Integer.parseInt(request.getParameter("id"));
		String aString=com.itfq.dao.activityRegistrationDao.join(aaid, studentId) ;
		if(aString=="false") {
			response.getWriter().write("你已经报名过这个活动");
		}else if(aString=="true"){
			request.getRequestDispatcher("/jsp/verification/joinActive.jsp").forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
