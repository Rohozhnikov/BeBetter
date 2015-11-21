package mum.edu.service;

import java.util.List;

import mum.edu.domain.Question;

public interface QuestionService {

	Question addQuestion(Question question);

	Question updateQuestion(Question question);

	void deleteQuestionById(Question question);

	Question getQuestionById(int id);

	List<Question> getAllQuestions();

	void saveAll(List<Question> questions);
}
