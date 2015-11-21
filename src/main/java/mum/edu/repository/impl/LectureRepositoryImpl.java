package mum.edu.repository.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import mum.edu.domain.Course;
import mum.edu.domain.Lecture;
import mum.edu.repository.LectureRepository;

@Repository
public class LectureRepositoryImpl extends BaseRepositoryImpl<Lecture> implements LectureRepository {

	@SuppressWarnings("unchecked")
	@Override
	public List<Lecture> getAllLecturesForCourse(Course course) {
		Query query = sessionFactory.getCurrentSession().createQuery("SELECT l FROM Course c join c.lectures l WHERE c.id=:id ");
		query.setParameter("id", course.getId());
		return new ArrayList<Lecture>(query.list());
	}

}
