package mum.edu.repository;

import java.util.List;

import mum.edu.domain.Course;
import mum.edu.domain.Quiz;

public interface QuizRepository extends BaseRepository<Quiz>{

	public List<Quiz> getAllQuizzesByCourse(Course course);
}
