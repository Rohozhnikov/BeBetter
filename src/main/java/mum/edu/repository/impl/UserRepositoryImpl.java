package mum.edu.repository.impl;

import org.springframework.stereotype.Repository;

import mum.edu.domain.User;
import mum.edu.repository.UserRepository;

@Repository
public class UserRepositoryImpl extends BaseRepositoryImpl<User> implements UserRepository{

}
