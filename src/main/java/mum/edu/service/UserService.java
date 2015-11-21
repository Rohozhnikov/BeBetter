package mum.edu.service;

import java.util.List;

import mum.edu.domain.User;


public interface UserService {

	User addCustomer(User user);

	User updateCustomer(User user);

	void deleteCustomerById(User user);

	User getCustomerById(int id);

	List<User> getAllCustomers();

	void saveAll(List<User> users);
}
