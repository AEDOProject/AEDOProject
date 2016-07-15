package com.mfu.dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.AnnotationConfiguration;

import com.mfu.entity.*;

public class FundProjectDAO {
	SessionFactory sessionFactory;

	Session session;

	public FundProjectDAO() {

		sessionFactory = new AnnotationConfiguration().configure()

		.buildSessionFactory();

	}

	public void create(FundProject param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.persist(param);

		session.getTransaction().commit();

	}

	public void update(FundProject param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.merge(param);

		session.getTransaction().commit();

	}

	public void delete(long id) {
		
		FundProject obj = findFundProjectById(id);

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		if (obj != null) {

			session.delete(obj);

		}

		session.getTransaction().commit();

	}

	public FundProject findFundProjectById(long id) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		FundProject obj = (FundProject) session.get(FundProject.class, id);

		session.getTransaction().commit();

		return obj;

	}

	public List<FundProject> getAllFundProject() {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<FundProject> emps = session.createQuery(" SELECT ent FROM FundProject ent ").list();

		session.getTransaction().commit();

		return emps;

	}

	public List<FundProject> findByProjectname(String param1) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<FundProject> emps = session.createQuery("SELECT ent FROM FundProject ent WHERE ent.projectname = :param1")

				.setParameter("param1", param1).list();

		session.getTransaction().commit();

		return emps;

	}
}
