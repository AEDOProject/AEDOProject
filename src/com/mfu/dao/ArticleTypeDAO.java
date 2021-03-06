package com.mfu.dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.AnnotationConfiguration;

import com.mfu.entity.*;

public class ArticleTypeDAO {
	SessionFactory sessionFactory;

	Session session;

	public ArticleTypeDAO() {

		sessionFactory = new AnnotationConfiguration().configure()

		.buildSessionFactory();

	}

	public void create(ArticleType param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.persist(param);

		session.getTransaction().commit();

	}

	public void update(ArticleType param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.merge(param);

		session.getTransaction().commit();

	}

	public void delete(long id) {
		
		ArticleType obj = findArticleTypeById(id);

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		if (obj != null) {

			session.delete(obj);

		}

		session.getTransaction().commit();

	}

	public ArticleType findArticleTypeById(long id) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		ArticleType obj = (ArticleType) session.get(ArticleType.class, id);

		session.getTransaction().commit();

		return obj;

	}

	public List<ArticleType> getAllArticleType() {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<ArticleType> emps = session.createQuery(" SELECT ent FROM ArticleType ent ").list();

		session.getTransaction().commit();

		return emps;

	}
	public List<Article> getArticleByArticleType(long id) {
		session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Article> objs = session
				.createQuery("SELECT ent FROM Article ent WHERE articletype_id=:id")
				.setParameter("id", id).list();
		session.getTransaction().commit();
		return objs;
	}
	public List<ArticleType> findByTitle(String param1) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<ArticleType> emps = session.createQuery("SELECT ent FROM ArticleType ent WHERE ent.typename = :param1")

				.setParameter("param1", param1).list();

		session.getTransaction().commit();

		return emps;

	}
}
