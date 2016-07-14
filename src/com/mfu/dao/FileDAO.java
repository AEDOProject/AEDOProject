package com.mfu.dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.AnnotationConfiguration;

import com.mfu.entity.*;

public class FileDAO {
	SessionFactory sessionFactory;

	Session session;

	public FileDAO() {

		sessionFactory = new AnnotationConfiguration().configure()

		.buildSessionFactory();

	}

	public void create(File param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.persist(param);

		session.getTransaction().commit();

	}

	public void update(File param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.merge(param);

		session.getTransaction().commit();

	}

	public void delete(long id) {
		
		File obj = findFileById(id);

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		if (obj != null) {

			session.delete(obj);

		}

		session.getTransaction().commit();

	}

	public File findFileById(long id) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		File obj = (File) session.get(File.class, id);

		session.getTransaction().commit();

		return obj;

	}

	public List<File> getAllFile() {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<File> emps = session.createQuery(" SELECT ent FROM File ent ").list();

		session.getTransaction().commit();

		return emps;

	}

	public List<File> findByTitle(String param1) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<File> emps = session.createQuery("SELECT ent FROM File ent WHERE ent.title = :param1")

				.setParameter("param1", param1).list();

		session.getTransaction().commit();

		return emps;

	}
}
