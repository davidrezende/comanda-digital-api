package br.com.comandadigital.service;



import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import br.com.comandadigital.model.User;
import br.com.comandadigital.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class UserService {

	private final UserRepository userRepository;
	
	
	public Iterable<User> listAll(Pageable pageable){
		return userRepository.findAll(pageable);
	}
	
	public List<User> listAll(){
		return userRepository.findAll();
	}

	public User save(User user) {
		user.setDtRegistration(new Date());
		return userRepository.save(user);
	}
	
	public User update(User user) {
		return userRepository.save(user);
	}
	
	
	
}
