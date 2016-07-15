package com.mfu.dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.AnnotationConfiguration;

import com.mfu.entity.*;

public class GeneralDetailClassroomDAO {
	SessionFactory sessionFactory;

	Session session;

	public GeneralDetailClassroomDAO() {

		sessionFactory = new AnnotationConfiguration().configure()

		.buildSessionFactory();

	}

	public void create(GeneralDetailClassroom param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.persist(param);

		session.getTransaction().commit();

	}

	public void update(GeneralDetailClassroom param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.merge(param);

		session.getTransaction().commit();

	}

	public void delete(long id) {
		
		GeneralDetailClassroom obj = findGeneralDetailClassroomById(id);

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		if (obj != null) {

			session.delete(obj);

		}

		session.getTransaction().commit();

	}

	public GeneralDetailClassroom findGeneralDetailClassroomById(long id) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		GeneralDetailClassroom obj = (GeneralDetailClassroom) session.get(GeneralDetailClassroom.class, id);

		session.getTransaction().commit();

		return obj;

	}

	public List<GeneralDetailClassroom> getAllGeneralDetailClassroom() {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<GeneralDetailClassroom> emps = session.createQuery(" SELECT ent FROM GeneralDetailClassroom ent ").list();

		session.getTransaction().commit();

		return emps;

	}

	public List<GeneralDetailClassroom> findByTitle(String param1) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<GeneralDetailClassroom> emps = session.createQuery("SELECT ent FROM GeneralDetailClassroom ent WHERE ent.title = :param1")

				.setParameter("param1", param1).list();

		session.getTransaction().commit();

		return emps;

	}
}
