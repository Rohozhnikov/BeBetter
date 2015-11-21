package mum.edu.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mum.edu.domain.Question;
import mum.edu.repository.QuestionRepository;
import mum.edu.service.QuestionService;

@Service
@Transactional
public class QuestionServiceImpl implements QuestionService	{
	
	@Autowired
	private QuestionRepository questionRepositor; 

	@Override
	public Question addQuestion(Question question) {
		return questionRepositor.add(question);
	}

	@Override
	public Question updateQuestion(Question question) {
		return questionRepositor.update(question);
	}

	@Override
	public void deleteQuestionById(Question question) {
		questionRepositor.delete(question);
	}

	@Override
	public Question getQuestionById(int id) {
		return questionRepositor.get(id);
	}

	@Override
	public List<Question> getAllQuestions() {
		return new ArrayList<>(questionRepositor.getAll());
	}

	@Override
	public void saveAll(List<Question> Questionzes) {
		for (Question question : Questionzes) {
			questionRepositor.add(question);
		}
	}

}
