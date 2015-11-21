package mum.edu.repository;

import java.util.List;

import mum.edu.domain.Course;
import mum.edu.domain.Lecture;

public interface LectureRepository extends BaseRepository<Lecture> {

	public List<Lecture> getAllLecturesForCourse(Course course);
}
