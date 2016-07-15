package com.mfu.dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.AnnotationConfiguration;

import com.mfu.entity.*;

public class AlbumDAO {
	SessionFactory sessionFactory;

	Session session;

	public AlbumDAO() {

		sessionFactory = new AnnotationConfiguration().configure()

		.buildSessionFactory();

	}

	public void create(Album param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.persist(param);

		session.getTransaction().commit();

	}

	public void update(Album param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.merge(param);

		session.getTransaction().commit();

	}

	public void delete(long id) {
		
		Album obj = findAlbumById(id);

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		if (obj != null) {

			session.delete(obj);

		}

		session.getTransaction().commit();

	}

	public Album findAlbumById(long id) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		Album obj = (Album) session.get(Album.class, id);

		session.getTransaction().commit();

		return obj;

	}

	public List<Album> getAllAlbum() {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<Album> emps = session.createQuery(" SELECT ent FROM Album ent ").list();

		session.getTransaction().commit();

		return emps;

	}
	public List<Image> getImageByAlbum(long id) {
		session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Image> objs = session
				.createQuery("SELECT ent FROM Image ent WHERE ent.Album.id=:id")
				.setParameter("id", id).list();
		session.getTransaction().commit();
		return objs;
	}
}
