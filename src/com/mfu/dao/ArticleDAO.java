package com.mfu.dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.AnnotationConfiguration;

import com.mfu.entity.*;

public class ArticleDAO {
	SessionFactory sessionFactory;

	Session session;

	public ArticleDAO() {

		sessionFactory = new AnnotationConfiguration().configure()

		.buildSessionFactory();

	}

	public void create(Article param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.persist(param);

		session.getTransaction().commit();

	}

	public void update(Article param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.merge(param);

		session.getTransaction().commit();

	}

	public void delete(long id) {
		
		Article obj = findArticleById(id);

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		if (obj != null) {

			session.delete(obj);

		}

		session.getTransaction().commit();

	}

	public Article findArticleById(long id) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		Article obj = (Article) session.get(Article.class, id);

		session.getTransaction().commit();

		return obj;

	}

	public List<Article> getAllArticle() {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<Article> emps = session.createQuery(" SELECT ent FROM Article ent ORDER BY ent.date DESC").list();

		session.getTransaction().commit();

		return emps;

	}

	public List<Article> findByTitle(String param1) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();
		List<Article> emps = session.createQuery("SELECT ent FROM Article ent WHERE ent.title = :param1")

				.setParameter("param1", param1).list();

		session.getTransaction().commit();

		return emps;

	}
}
