package com.itfq.dao;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.itfq.domain.Academician;

public class JoinAssociationDao {
	public static String join(String Student,int id){
		Configuration config = new Configuration().configure();
		// 根据配置，生成session工厂
		SessionFactory factory = config.buildSessionFactory();
		// 用工厂生成session
		Session session = factory.openSession();
		// 查询
		// 查单条数据
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");


		Academician aMember = new Academician(Student,id,df.format(new Date()));
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
