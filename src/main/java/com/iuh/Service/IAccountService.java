package com.iuh.Service;

import org.springframework.stereotype.Service;

import com.iuh.entity.User;

@Service
public interface IAccountService {

	public int AddAccount(User user);
	public User CheckAccount(User user);
}
