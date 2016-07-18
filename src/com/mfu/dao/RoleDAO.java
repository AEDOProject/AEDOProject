package com.mfu.dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.AnnotationConfiguration;

import com.mfu.entity.*;

public class RoleDAO {
	SessionFactory sessionFactory;

	Session session;

	public RoleDAO() {

		sessionFactory = new AnnotationConfiguration().configure()

		.buildSessionFactory();

	}

	public void create(Role param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.persist(param);

		session.getTransaction().commit();

	}

	public void update(Role param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.merge(param);

		session.getTransaction().commit();

	}

	public void delete(long id) {
		
		Role obj = findRoleById(id);

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		if (obj != null) {

			session.delete(obj);

		}

		session.getTransaction().commit();

	}

	public Role findRoleById(long id) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		Role obj = (Role) session.get(Role.class, id);

		session.getTransaction().commit();

		return obj;

	}

	public List<Role> getAllRole() {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<Role> emps = session.createQuery(" SELECT ent FROM Role ent ").list();

		session.getTransaction().commit();

		return emps;

	}
	public List<User> getUserByRole(long id) {
		session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<User> objs = session
				.createQuery("SELECT ent FROM User ent WHERE ent.role_id=:id")
				.setParameter("id", id).list();
		session.getTransaction().commit();
		return objs;
	}
}
