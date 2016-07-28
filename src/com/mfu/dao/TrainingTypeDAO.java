package com.mfu.dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.AnnotationConfiguration;

import com.mfu.entity.*;

public class TrainingTypeDAO {
	SessionFactory sessionFactory;

	Session session;

	public TrainingTypeDAO() {

		sessionFactory = new AnnotationConfiguration().configure()

		.buildSessionFactory();

	}

	public void create(TrainingType param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.persist(param);

		session.getTransaction().commit();

	}

	public void update(TrainingType param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.merge(param);

		session.getTransaction().commit();

	}

	public void delete(long id) {
		
		TrainingType obj = findTrainingTypeById(id);

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		if (obj != null) {

			session.delete(obj);

		}

		session.getTransaction().commit();

	}

	public TrainingType findTrainingTypeById(long id) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		TrainingType obj = (TrainingType) session.get(TrainingType.class, id);

		session.getTransaction().commit();

		return obj;

	}

	public List<TrainingType> getAllTrainingType() {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<TrainingType> emps = session.createQuery(" SELECT ent FROM TrainingType ent ").list();

		session.getTransaction().commit();

		return emps;

	}
	public List<TrainingProject> getTrainingProjectByTrainingType(long id) {
		session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<TrainingProject> objs = session
				.createQuery("SELECT ent FROM TrainingProject ent WHERE trainingtype_id=:id")
				.setParameter("id", id).list();
		session.getTransaction().commit();
		return objs;
	}
}
