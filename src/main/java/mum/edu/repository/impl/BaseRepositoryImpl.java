package mum.edu.repository.impl;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import mum.edu.repository.BaseRepository;

public abstract class BaseRepositoryImpl<T> implements BaseRepository<T>  {
	
	@Autowired
	protected SessionFactory sessionFactory;

	private Class<T> type;

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public BaseRepositoryImpl() {
		Type t = getClass().getGenericSuperclass();
		ParameterizedType pt = (ParameterizedType) t;
		type = (Class) pt.getActualTypeArguments()[0];
	}
	@Override
	public T add(T t) {
		sessionFactory.getCurrentSession().save(t);
		return t;
	}
	@Override
	public T update(T t) {
		sessionFactory.getCurrentSession().saveOrUpdate(t);
		return t;
	}
	@Override
	public void delete(T t) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(t);
	}
	@Override
	public T get(int id) {
		return (T) sessionFactory.getCurrentSession().get(type, id);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<T> getAll() {
		return sessionFactory.getCurrentSession().createCriteria(type).list();
	}

}
