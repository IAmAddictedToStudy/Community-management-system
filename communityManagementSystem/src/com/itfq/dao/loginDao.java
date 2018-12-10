package com.itfq.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.itfq.domain.Member;

public class loginDao {
	public static String login(String studentId, String password) {
		Configuration config = new Configuration().configure();
		// 根据配置，生成session工厂
		SessionFactory factory = config.buildSessionFactory();
		// 用工厂生成session
		Session session = factory.openSession();
		// 查询
		// 查单条数据
		Member data = session.get(Member.class, studentId);
		session.close();
		if (data == null) {
			return "The account does not exist, please check the input!";// 账号不存在
		} else if (!password.equals(data.getPassword())) {
			return "Wrong account or password!";// 账号或密码错误密码错误
		}
		
		return "true";
	}
}
