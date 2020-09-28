package com.iuh.Service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iuh.DAO.UserDAO;
import com.iuh.entity.User;

@Service
public class AccountServiceImpl implements IAccountService {

	@Autowired
	UserDAO userDAo= new UserDAO();
	
	@Override	
	public int AddAccount(User user) {
		
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));	
		return userDAo.AddAccount(user);
	}

	@Override
	public User CheckAccount(User user) {
		String pass= user.getPassword();
		user = userDAo.GetUserByAcc(user);
		if(user != null) {
			if(BCrypt.checkpw(pass, user.getPassword()))
				return user;
			else {
				return null;
			}
		}
		return null;
	}

}
