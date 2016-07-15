package com.mfu.dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.AnnotationConfiguration;

import com.mfu.entity.*;

public class ImageDAO {
	SessionFactory sessionFactory;

	Session session;

	public ImageDAO() {

		sessionFactory = new AnnotationConfiguration().configure()

		.buildSessionFactory();

	}

	public void create(Image param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.persist(param);

		session.getTransaction().commit();

	}

	public void update(Image param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.merge(param);

		session.getTransaction().commit();

	}

	public void delete(long id) {
		
		Image obj = findImageById(id);

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		if (obj != null) {

			session.delete(obj);

		}

		session.getTransaction().commit();

	}

	public Image findImageById(long id) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		Image obj = (Image) session.get(Image.class, id);

		session.getTransaction().commit();

		return obj;

	}

	public List<Image> getAllImage() {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<Image> emps = session.createQuery(" SELECT ent FROM Image ent ").list();

		session.getTransaction().commit();

		return emps;

	}

	public List<Image> findByTitle(String param1) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<Image> emps = session.createQuery("SELECT ent FROM Image ent WHERE ent.title = :param1")

				.setParameter("param1", param1).list();

		session.getTransaction().commit();

		return emps;

	}
}
