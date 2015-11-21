package mum.edu.repository.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import mum.edu.domain.Course;
import mum.edu.repository.CourseRepository;

@Repository
public class CourseRepositoryImpl extends BaseRepositoryImpl<Course> implements CourseRepository{

	@SuppressWarnings("unchecked")
	@Override
	public List<Course> relatedCourses(Course course) {
		Query query = sessionFactory.getCurrentSession().createQuery("SELECT c FROM Course c WHERE c.field=:field ");
		query.setParameter("field", course.getField());
		return new ArrayList<Course>(query.list());
	}

}
