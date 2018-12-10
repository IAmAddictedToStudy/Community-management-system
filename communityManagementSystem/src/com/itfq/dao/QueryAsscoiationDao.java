package com.itfq.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class QueryAsscoiationDao {
	public static String queryAsscoiation() {
		Configuration config = new Configuration().configure();
		// 根据配置，生成session工厂
		SessionFactory factory = config.buildSessionFactory();
		// 用工厂生成session
		Session session = factory.openSession();
		
//		List<Fruit> list = session.createQuery("from Fruit").getResultList();
//		for (Fruit a : list) {
//			System.out.println(a.getName() + a.getPrice() + a.getNumbers());
//		}
		session.close();
		return "ture";
	}
}
