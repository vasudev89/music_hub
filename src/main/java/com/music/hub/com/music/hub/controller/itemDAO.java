package com.music.hub.com.music.hub.controller;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
 
public class itemDAO
{
	@Autowired
	private SessionFactory sessionFactory;
 
	@Bean
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
 
	public void insert(item i){
		Session session = getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(i);
		session.getTransaction().commit();
 
		session.close();
		
		System.out.println("Inserted");
		
	}
 
	public List<item> selectAll(){
		Session session = getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Criteria criteria = session.createCriteria(item.class);
		List<item> persons = (List<item>)criteria.list();
		session.getTransaction().commit();
		return persons;
	}
 
}