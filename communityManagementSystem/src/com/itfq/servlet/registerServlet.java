package com.itfq.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.itfq.dao.RegisterDao;
import com.itfq.domain.Member;

/**
 * @author LiaoF  E-mail: LiaoFuQin@QQ.com
 * @version 创建时间：2018年12月2日  下午7:35:54
 * tags
 */
public class registerServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");


		java.util.Map<String, String[]>properties=request.getParameterMap();
		
		Member aMember=new Member();
		
		try {
			BeanUtils.populate(aMember, properties);
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		String aString=RegisterDao.register(aMember);
		response.getWriter().write("注册成功");
		System.out.println(aMember.toString()+aString);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
