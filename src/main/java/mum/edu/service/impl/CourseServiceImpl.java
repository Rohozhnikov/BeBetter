package mum.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mum.edu.domain.Course;
import mum.edu.repository.CourseRepository;
import mum.edu.service.CourseService;

@Service
@Transactional
public class CourseServiceImpl implements CourseService{

	@Autowired
	CourseRepository courseRepository;
	
	@Override
	public Course addCourse(Course course) {
		return courseRepository.add(course);
	}

	@Override
	public Course updateCourse(Course course) {
		return courseRepository.update(course);
	}

	@Override
	public void deleteCourseById(Course course) {
		courseRepository.delete(course);
	}

	@Override
	public Course getCourseById(int id) {
		return courseRepository.get(id);
	}

	@Override
	public List<Course> getAllCourses() {
		return courseRepository.getAll();
	}

	@Override
	public void saveAll(List<Course> Courses) {
		for (Course course : Courses) {
			courseRepository.add(course);
		}
		
	}

	@Override
	public List<Course> relatedCourses(Course course) {
		return courseRepository.relatedCourses(course);
	}

}
