package com.mfu.dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.AnnotationConfiguration;

import com.mfu.entity.*;

public class RegulationProfessorDAO {
	SessionFactory sessionFactory;

	Session session;

	public RegulationProfessorDAO() {

		sessionFactory = new AnnotationConfiguration().configure()

		.buildSessionFactory();

	}

	public void create(RegulationProfessor param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.persist(param);

		session.getTransaction().commit();

	}

	public void update(RegulationProfessor param) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		session.merge(param);

		session.getTransaction().commit();

	}

	public void delete(long id) {
		
		RegulationProfessor obj = findRegulationProfessorById(id);

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		if (obj != null) {

			session.delete(obj);

		}

		session.getTransaction().commit();

	}

	public RegulationProfessor findRegulationProfessorById(long id) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		RegulationProfessor obj = (RegulationProfessor) session.get(RegulationProfessor.class, id);

		session.getTransaction().commit();

		return obj;

	}

	public List<RegulationProfessor> getAllRegulationProfessor() {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<RegulationProfessor> emps = session.createQuery(" SELECT ent FROM RegulationProfessor ent ").list();

		session.getTransaction().commit();

		return emps;

	}

	public List<RegulationProfessor> findByTitle(String param1) {

		session = sessionFactory.getCurrentSession();

		session.beginTransaction();

		List<RegulationProfessor> emps = session.createQuery("SELECT ent FROM RegulationProfessor ent WHERE ent.title = :param1")

				.setParameter("param1", param1).list();

		session.getTransaction().commit();

		return emps;

	}
}
