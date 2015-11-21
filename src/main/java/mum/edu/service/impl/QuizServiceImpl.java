package mum.edu.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mum.edu.domain.Course;
import mum.edu.domain.Quiz;
import mum.edu.repository.QuizRepository;
import mum.edu.service.QuizService;

@Service
@Transactional
public class QuizServiceImpl implements QuizService	{
	
	@Autowired
	private QuizRepository quizRepositor; 

	@Override
	public Quiz addQuiz(Quiz quiz) {
		return quizRepositor.add(quiz);
	}

	@Override
	public Quiz updateQuiz(Quiz quiz) {
		return quizRepositor.update(quiz);
	}

	@Override
	public void deleteQuizById(Quiz quiz) {
		quizRepositor.delete(quiz);
	}

	@Override
	public Quiz getQuizById(int id) {
		return quizRepositor.get(id);
	}

	@Override
	public List<Quiz> getAllQuizs() {
		return new ArrayList<>(quizRepositor.getAll());
	}

	@Override
	public void saveAll(List<Quiz> quizzes) {
		for (Quiz quiz : quizzes) {
			quizRepositor.add(quiz);
		}
	}

	@Override
	public List<Quiz> getAllQuizsByCourse(Course course) {
		return quizRepositor.getAllQuizzesByCourse(course);
	}

}
