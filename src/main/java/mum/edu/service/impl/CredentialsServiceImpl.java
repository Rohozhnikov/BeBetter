package mum.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import mum.edu.domain.Credentials;
import mum.edu.repository.CredentialsRepository;


/**
 * @author Eugene
 *
 */
public class CredentialsServiceImpl implements mum.edu.service.CredentialsService {
	
 	@Autowired
	private CredentialsRepository credentialsRepository;

  	@PreAuthorize("hasRole('user')")
  	public void save(Credentials credentials) {

  		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();   		
  		String encodedPassword = passwordEncoder.encode(credentials.getPassword());
  		credentials.setPassword(encodedPassword);
  		
  		credentialsRepository.add(credentials);
	}
	public List<Credentials> findAll() {
		return (List<Credentials>)credentialsRepository.getAll();
	}

 
}
