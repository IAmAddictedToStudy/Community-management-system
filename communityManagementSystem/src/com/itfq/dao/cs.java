package com.itfq.dao;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.itfq.domain.Academician;
import com.itfq.domain.Activity_registration;

public class cs {
	public static void main(String[] args) {
		// 读取hibernate.cfg.xml的配置，加载Hiberna的类库
		Configuration config = new Configuration().configure();
		// 根据配置，生成session工厂
		SessionFactory factory = config.buildSessionFactory();
		// 用工厂生成session
		Session session = factory.openSession();
		// 查询
		// 查单条数据
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");

//		,1,df.format(new Date())
		
		Activity_registration aMember = new Activity_registration(1,"105032016014");
		try {
			session.beginTransaction();
			session.save(aMember);
			session.getTransaction().commit();
		} catch (Exception ex) {
			session.getTransaction().rollback();
		}

		// 2.用session.save()保存到数据库了

		session.close();
	}

}
