package com.mfu.dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.AnnotationConfiguration;

import com.mfu.entity.*;

public class SARDAO {
	SessionFactory sessionFactory;

	Session session;

	public SARDAO() {

		sessionFactory = new AnnotationConfiguration().configure()

		.buildSessionFactory();

	}

	public void create(SAR param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.persist(param);

		session.getTransaction().commit();

	}

	public void update(SAR param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.merge(param);

		session.getTransaction().commit();

	}

	public void delete(long id) {
		
		SAR obj = findSARById(id);

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		if (obj != null) {

			session.delete(obj);

		}

		session.getTransaction().commit();

	}

	public SAR findSARById(long id) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		SAR obj = (SAR) session.get(SAR.class, id);

		session.getTransaction().commit();

		return obj;

	}

	public List<SAR> getAllSAR() {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<SAR> emps = session.createQuery(" SELECT ent FROM SAR ent ").list();

		session.getTransaction().commit();

		return emps;

	}

	public List<SAR> findByDocumentCode(String param1) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<SAR> emps = session.createQuery("SELECT ent FROM SAR ent WHERE ent.documentcode = :param1")

				.setParameter("param1", param1).list();

		session.getTransaction().commit();

		return emps;

	}
}
