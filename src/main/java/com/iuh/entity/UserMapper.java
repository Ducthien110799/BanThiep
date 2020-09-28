package com.iuh.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UserMapper implements RowMapper<User>{

	
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user= new User();
		user.setId(rs.getLong("id"));
		user.setUser(rs.getString("tendn"));
		user.setPassword(rs.getString("pass"));
		user.setDisplay_name(rs.getString("display_name"));
		user.setAddress(rs.getString("addresss"));
		return user;
	}
	

}
