package com.itfq.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author LiaoF E-mail: LiaoFuQin@QQ.com
 * @version 创建时间：2018年12月2日 下午6:12:41 tags
 */
public class loginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String studentId = request.getParameter("studentId");
		String password = request.getParameter("password");
		// System.out.println(studentId);
		String aString = com.itfq.dao.loginDao.login(studentId, password);
		if (!aString.equals("true")) {
			response.sendRedirect("jsp/verification/loginFailure.jsp");
		} else if (aString.equals("true")) {// 完成功能，保存用户信息
			ServletContext application = this.getServletConfig().getServletContext();
			
			application.setAttribute("Student", studentId);
			response.sendRedirect("jsp/homepage/homePage.jsp");// 重定向至首页
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
