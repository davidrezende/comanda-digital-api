package br.com.comandadigital.service;



import java.util.Date;
import java.util.List;

import br.com.comandadigital.constants.log.UserLog;
import br.com.comandadigital.security.util.PasswordGenerator;
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
		log.info(UserLog.LIST_LOG);
		return userRepository.findAll(pageable);
	}
	
	public List<User> listAll(){
		log.info(UserLog.LIST_LOG);
		return userRepository.findAll();
	}

	public User save(User user) {
		log.info(UserLog.SAVE_LOG);
		PasswordGenerator passwordGenerator = new PasswordGenerator();
		user.setDtRegistration(new Date());
		user.setPassword(passwordGenerator.encryptPassword(user.getPassword()));
		return userRepository.save(user);
	}
	
	public User update(User user) {
		log.info(UserLog.UPDATE_LOG);
		return userRepository.save(user);
	}



	
	
}
