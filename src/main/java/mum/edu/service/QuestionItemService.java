package mum.edu.service;

import java.util.List;

import mum.edu.domain.QuestionItem;

public interface QuestionItemService {

	QuestionItem addQuestionItem(QuestionItem questionItem);

	QuestionItem updateQuestionItem(QuestionItem questionItem);

	void deleteQuestionItemById(QuestionItem questionItem);

	QuestionItem getQuestionItemById(int id);

	List<QuestionItem> getAllQuestionItems();

	void saveAll(List<QuestionItem> questionItems);
}
