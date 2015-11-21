package mum.edu.service;

import java.util.List;

import mum.edu.domain.Course;
import mum.edu.domain.Quiz;

public interface QuizService {

	Quiz addQuiz(Quiz quiz);

	Quiz updateQuiz(Quiz quiz);

	void deleteQuizById(Quiz quiz);

	Quiz getQuizById(int id);

	List<Quiz> getAllQuizs();

	List<Quiz> getAllQuizsByCourse(Course course);

	void saveAll(List<Quiz> quizzes);
}
