package com.mfu.dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.AnnotationConfiguration;

import com.mfu.entity.*;

public class TrainingProjectDAO {
	SessionFactory sessionFactory;

	Session session;

	public TrainingProjectDAO() {

		sessionFactory = new AnnotationConfiguration().configure()

		.buildSessionFactory();

	}

	public void create(TrainingProject param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.persist(param);

		session.getTransaction().commit();

	}

	public void update(TrainingProject param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.merge(param);

		session.getTransaction().commit();

	}

	public void delete(long id) {
		
		TrainingProject obj = findTrainingProjectById(id);

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		if (obj != null) {

			session.delete(obj);

		}

		session.getTransaction().commit();

	}

	public TrainingProject findTrainingProjectById(long id) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		TrainingProject obj = (TrainingProject) session.get(TrainingProject.class, id);

		session.getTransaction().commit();

		return obj;

	}

	public List<TrainingProject> getAllTrainingProject() {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<TrainingProject> emps = session.createQuery(" SELECT ent FROM TrainingProject ent ").list();

		session.getTransaction().commit();

		return emps;

	}

	public List<TrainingProject> findByTitle(String param1) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<TrainingProject> emps = session.createQuery("SELECT ent FROM TrainingProject ent WHERE ent.title = :param1")

				.setParameter("param1", param1).list();

		session.getTransaction().commit();

		return emps;

	}
}
