package mum.edu.repository.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import mum.edu.domain.Course;
import mum.edu.domain.Quiz;
import mum.edu.repository.QuizRepository;

@Repository
public class QuizRepositoryImpl extends BaseRepositoryImpl<Quiz> implements QuizRepository{

	@SuppressWarnings("unchecked")
	@Override
	public List<Quiz> getAllQuizzesByCourse(Course course) {
		Query query = sessionFactory.getCurrentSession().createQuery("SELECT q FROM Quiz q join q.courses c WHERE c.id=:id");
		query.setParameter("id", course.getId());
		return new ArrayList<>(query.list());
	}

}
