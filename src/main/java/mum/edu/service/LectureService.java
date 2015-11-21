package mum.edu.service;

import java.util.List;

import mum.edu.domain.Course;
import mum.edu.domain.Lecture;

public interface LectureService {
	Lecture addLecture(Lecture lecture);

	Lecture updateLecture(Lecture lecture);

	void deleteLectureById(Lecture lecture);

	Lecture getLectureById(int id);

	List<Lecture> getAllLectures();

	List<Lecture> getAllLecturesForCourse(Course course);

	void saveAll(List<Lecture> lectures);
	
}
