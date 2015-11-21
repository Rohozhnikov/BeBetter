package mum.edu.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mum.edu.domain.QuestionItem;
import mum.edu.repository.QuestionItemRepository;
import mum.edu.service.QuestionItemService;

@Service
@Transactional
public class QuestionItemServiceImpl implements QuestionItemService	{
	
	@Autowired
	private QuestionItemRepository QuestionItemRepositor; 

	@Override
	public QuestionItem addQuestionItem(QuestionItem questionItem) {
		return QuestionItemRepositor.add(questionItem);
	}

	@Override
	public QuestionItem updateQuestionItem(QuestionItem questionItem) {
		return QuestionItemRepositor.update(questionItem);
	}

	@Override
	public void deleteQuestionItemById(QuestionItem questionItem) {
		QuestionItemRepositor.delete(questionItem);
	}

	@Override
	public QuestionItem getQuestionItemById(int id) {
		return QuestionItemRepositor.get(id);
	}

	@Override
	public List<QuestionItem> getAllQuestionItems() {
		return new ArrayList<>(QuestionItemRepositor.getAll());
	}

	@Override
	public void saveAll(List<QuestionItem> QuestionItemzes) {
		for (QuestionItem questionItem : QuestionItemzes) {
			QuestionItemRepositor.add(questionItem);
		}
	}

}
