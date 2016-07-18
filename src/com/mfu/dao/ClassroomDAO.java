package com.mfu.dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.AnnotationConfiguration;

import com.mfu.entity.*;

public class ClassroomDAO {
	SessionFactory sessionFactory;

	Session session;

	public ClassroomDAO() {

		sessionFactory = new AnnotationConfiguration().configure()

		.buildSessionFactory();

	}

	public void create(Classroom param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.persist(param);

		session.getTransaction().commit();

	}

	public void update(Classroom param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.merge(param);

		session.getTransaction().commit();

	}

	public void delete(long id) {
		
		Classroom obj = findClassroomById(id);

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		if (obj != null) {

			session.delete(obj);

		}

		session.getTransaction().commit();

	}

	public Classroom findClassroomById(long id) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		Classroom obj = (Classroom) session.get(Classroom.class, id);

		session.getTransaction().commit();

		return obj;

	}

	public List<Classroom> getAllClassroom() {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<Classroom> emps = session.createQuery(" SELECT ent FROM Classroom ent ").list();

		session.getTransaction().commit();

		return emps;

	}
	public List<Schedule> getScheduleByClassroom(long id) {
		session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Schedule> objs = session
				.createQuery("SELECT ent FROM Schedule ent WHERE ent.classroom_id=:id")
				.setParameter("id", id).list();
		session.getTransaction().commit();
		return objs;
	}
}
