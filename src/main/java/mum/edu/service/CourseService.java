package mum.edu.service;

import java.util.List;

import mum.edu.domain.Course;


public interface CourseService {

	Course addCourse(Course course);

	Course updateCourse(Course course);

	void deleteCourseById(Course course);

	Course getCourseById(int id);

	List<Course> getAllCourses();

	void saveAll(List<Course> Courses);
	
	List<Course> relatedCourses(Course course);
}
