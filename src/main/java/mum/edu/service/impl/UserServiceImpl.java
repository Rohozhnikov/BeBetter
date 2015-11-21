package mum.edu.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mum.edu.domain.User;
import mum.edu.repository.UserRepository;
import mum.edu.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	private UserRepository userRepository;
	
	@Override
	public User addCustomer(User user) {
		return userRepository.add(user);
	}

	@Override
	public User updateCustomer(User user) {
		return userRepository.update(user);
	}

	@Override
	public void deleteCustomerById(User user) {
		userRepository.delete(user);
		
	}

	@Override
	public User getCustomerById(int id) {
		return userRepository.get(id);
	}

	@Override
	public List<User> getAllCustomers() {
		return new ArrayList<>(userRepository.getAll());
	}

	@Override
	public void saveAll(List<User> users) {
		for (User user : users) {
			userRepository.add(user);
		}
	}

}
