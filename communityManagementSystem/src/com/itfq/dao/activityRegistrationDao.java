package com.itfq.dao;

import java.text.SimpleDateFormat;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.itfq.domain.Activity_registration;

public class activityRegistrationDao {
	public static String join(int aaId,String studentId) {
		
		Configuration config = new Configuration().configure();
		SessionFactory factory = config.buildSessionFactory();
		Session session = factory.openSession();
		
		Activity_registration aMember = new Activity_registration(aaId,studentId);
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
