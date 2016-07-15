package com.mfu.dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.AnnotationConfiguration;

import com.mfu.entity.*;

public class FundTypeDAO {
	SessionFactory sessionFactory;

	Session session;

	public FundTypeDAO() {

		sessionFactory = new AnnotationConfiguration().configure()

		.buildSessionFactory();

	}

	public void create(FundType param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.persist(param);

		session.getTransaction().commit();

	}

	public void update(FundType param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.merge(param);

		session.getTransaction().commit();

	}

	public void delete(long id) {
		
		FundType obj = findFundTypeById(id);

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		if (obj != null) {

			session.delete(obj);

		}

		session.getTransaction().commit();

	}

	public FundType findFundTypeById(long id) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		FundType obj = (FundType) session.get(FundType.class, id);

		session.getTransaction().commit();

		return obj;

	}

	public List<FundType> getAllFundType() {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<FundType> emps = session.createQuery(" SELECT ent FROM FundType ent ").list();

		session.getTransaction().commit();

		return emps;

	}
	public List<FundProject> getFundProjectByFundType(long id) {
		session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<FundProject> objs = session
				.createQuery("SELECT ent FROM FundProject ent WHERE ent.FundType.id=:id")
				.setParameter("id", id).list();
		session.getTransaction().commit();
		return objs;
	}
}
