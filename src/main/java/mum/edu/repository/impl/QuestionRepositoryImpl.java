package mum.edu.repository.impl;

import org.springframework.stereotype.Repository;

import mum.edu.domain.Question;
import mum.edu.repository.QuestionRepository;

@Repository
public class QuestionRepositoryImpl extends BaseRepositoryImpl<Question> implements QuestionRepository{

}
