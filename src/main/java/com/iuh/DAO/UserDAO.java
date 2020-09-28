package com.iuh.DAO;

import org.springframework.stereotype.Repository;

import com.iuh.Dto.ProductsDto;
import com.iuh.Dto.ProductsDtoMapper;
import com.iuh.entity.User;
import com.iuh.entity.UserMapper;

@Repository
public class UserDAO extends BaseDao {

	public int AddAccount(User user) {
		
		StringBuffer sql= new StringBuffer();
		sql.append("insert into users values(");
		sql.append("'"+user.getUser()+"'");
		sql.append(",");
		sql.append("'"+user.getPassword()+"'");
		sql.append(",");
		sql.append("N'"+user.getDisplay_name()+"'");
		sql.append(",");
		sql.append("'"+user.getAddress()+"'");
		sql.append(")");
		int insert= _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public User GetUserByAcc(User user) {
		
		String sql = "select * from users where users.tendn='"+user.getUser()+"'";
		User result = _jdbcTemplate.queryForObject(sql, new UserMapper());
		return result;
	}
}
