package com.mfu.dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.AnnotationConfiguration;

import com.mfu.entity.*;

public class WorkTypeDAO {
	SessionFactory sessionFactory;

	Session session;

	public WorkTypeDAO() {

		sessionFactory = new AnnotationConfiguration().configure()

		.buildSessionFactory();

	}

	public void create(WorkType param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.persist(param);

		session.getTransaction().commit();

	}

	public void update(WorkType param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.merge(param);

		session.getTransaction().commit();

	}

	public void delete(long id) {
		
		WorkType obj = findWorkTypeById(id);

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		if (obj != null) {

			session.delete(obj);

		}

		session.getTransaction().commit();

	}

	public WorkType findWorkTypeById(long id) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		WorkType obj = (WorkType) session.get(WorkType.class, id);

		session.getTransaction().commit();

		return obj;

	}

	public List<WorkType> getAllWorkType() {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<WorkType> emps = session.createQuery(" SELECT ent FROM WorkType ent ").list();

		session.getTransaction().commit();

		return emps;

	}

	public List<WorkType> findByTitle(String param1) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<WorkType> emps = session.createQuery("SELECT ent FROM WorkType ent WHERE ent.title = :param1")

				.setParameter("param1", param1).list();

		session.getTransaction().commit();

		return emps;

	}
	public List<Article> getArticleByWorkType(long id) {
		session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Article> objs = session
				.createQuery("SELECT ent FROM Article ent WHERE ent.WorkType.id=:id")
				.setParameter("id", id).list();
		session.getTransaction().commit();
		return objs;
	}
	public List<File> getFileByWorkType(long id) {
		session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<File> objs = session
				.createQuery("SELECT ent FROM File ent WHERE ent.WorkType.id=:id")
				.setParameter("id", id).list();
		session.getTransaction().commit();
		return objs;
	}
	public List<Album> getAlbumByWorkType(long id) {
		session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Album> objs = session
				.createQuery("SELECT ent FROM Album ent WHERE ent.WorkType.id=:id")
				.setParameter("id", id).list();
		session.getTransaction().commit();
		return objs;
	}
}
