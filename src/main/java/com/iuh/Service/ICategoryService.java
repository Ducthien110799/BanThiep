package com.iuh.Service;

import java.util.List;


import org.springframework.stereotype.Service;

import com.iuh.Dto.ProductsDto;

@Service
public interface ICategoryService {
	
	public List<ProductsDto> GetAllProductsByID(int id);
	
}
