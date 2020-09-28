package com.iuh.Service;

import org.springframework.stereotype.Service;

import com.iuh.Dto.PaginatesDto;

@Service
public interface IPaginatesService {
	public PaginatesDto GetInfoPaginates(int totalData, int limit, int currentPage);
}
