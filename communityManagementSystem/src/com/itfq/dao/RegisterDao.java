package com.itfq.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.itfq.domain.Member;

public class RegisterDao {
	public static String register(Member aMember) {
		Configuration config = new Configuration().configure();
		// 根据配置，生成session工厂
		SessionFactory factory = config.buildSessionFactory();
		// 用工厂生成session
		Session session = factory.openSession();
		try {
			session.beginTransaction();
			session.save(aMember);
			session.getTransaction().commit();
		} catch (Exception ex) {
			session.getTransaction().rollback();
			return "false";
		}
		// 2.用session.save()保存到数据库了
		session.close();
		
		return "true";
	}
}
