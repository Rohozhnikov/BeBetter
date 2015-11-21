package mum.edu.repository;

import java.util.List;

import mum.edu.domain.Course;

public interface CourseRepository extends BaseRepository<Course> {

	public List<Course> relatedCourses(Course course);
}
