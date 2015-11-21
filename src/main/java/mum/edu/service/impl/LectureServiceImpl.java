package mum.edu.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mum.edu.domain.Course;
import mum.edu.domain.Lecture;
import mum.edu.repository.LectureRepository;
import mum.edu.service.LectureService;

@Service
@Transactional
public class LectureServiceImpl implements LectureService {

	@Autowired
	private LectureRepository lectureRepository;

	@Override
	public Lecture addLecture(Lecture lecture) {
		return lectureRepository.add(lecture);
	}

	@Override
	public Lecture updateLecture(Lecture lecture) {
		return lectureRepository.update(lecture);
	}

	@Override
	public void deleteLectureById(Lecture lecture) {
		lectureRepository.delete(lecture);
	}

	@Override
	public Lecture getLectureById(int id) {
		return lectureRepository.get(id);
	}

	@Override
	public List<Lecture> getAllLectures() {
		return new ArrayList<>(lectureRepository.getAll());
	}

	@Override
	public void saveAll(List<Lecture> lectures) {
		for (Lecture lecture : lectures) {
			lectureRepository.add(lecture);
		}
	}

	@Override
	public List<Lecture> getAllLecturesForCourse(Course course) {
		return lectureRepository.getAllLecturesForCourse(course);
	}
}
