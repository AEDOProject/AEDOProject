package com.mfu.dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.AnnotationConfiguration;

import com.mfu.entity.*;

public class ScheduleDAO {
	SessionFactory sessionFactory;

	Session session;

	public ScheduleDAO() {

		sessionFactory = new AnnotationConfiguration().configure()

		.buildSessionFactory();

	}

	public void create(Schedule param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.persist(param);

		session.getTransaction().commit();

	}

	public void update(Schedule param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.merge(param);

		session.getTransaction().commit();

	}

	public void delete(long id) {
		
		Schedule obj = findScheduleById(id);

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		if (obj != null) {

			session.delete(obj);

		}

		session.getTransaction().commit();

	}

	public Schedule findScheduleById(long id) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		Schedule obj = (Schedule) session.get(Schedule.class, id);

		session.getTransaction().commit();

		return obj;

	}

	public List<Schedule> getAllSchedule() {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<Schedule> emps = session.createQuery(" SELECT ent FROM Schedule ent ").list();

		session.getTransaction().commit();

		return emps;

	}

	
}
