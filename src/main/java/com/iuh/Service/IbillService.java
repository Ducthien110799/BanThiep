package com.iuh.Service;

import java.util.HashMap;

import com.iuh.Dto.CartDto;

public interface IbillService  {

	public int AddBills();
	public void AddBilDetail(HashMap<Long, 	CartDto> carts);
}
