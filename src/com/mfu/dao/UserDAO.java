package com.mfu.dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.AnnotationConfiguration;

import com.mfu.entity.*;

public class UserDAO {
	SessionFactory sessionFactory;

	Session session;

	public UserDAO() {

		sessionFactory = new AnnotationConfiguration().configure()

		.buildSessionFactory();

	}

	public void create(User param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.persist(param);

		session.getTransaction().commit();

	}

	public void update(User param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.merge(param);

		session.getTransaction().commit();

	}

	public void delete(long id) {
		
		User obj = findUserById(id);

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		if (obj != null) {

			session.delete(obj);

		}

		session.getTransaction().commit();

	}

	public User findUserById(long id) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		User obj = (User) session.get(User.class, id);

		session.getTransaction().commit();

		return obj;

	}

	public List<User> getAllUser() {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<User> emps = session.createQuery(" SELECT ent FROM User ent ").list();

		session.getTransaction().commit();

		return emps;

	}

	public List<User> findByTitle(String param1) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<User> emps = session.createQuery("SELECT ent FROM User ent WHERE ent.title = :param1")

				.setParameter("param1", param1).list();

		session.getTransaction().commit();

		return emps;

	}
}
