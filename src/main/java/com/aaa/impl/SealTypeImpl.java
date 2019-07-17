package com.aaa.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.idao.ISealTypeDao;
import com.aaa.service.SealTypeService;

@Service
public class SealTypeImpl implements SealTypeService {
	@Autowired
	private ISealTypeDao sealtypedao;

	@Override
	public List<Map<String, Object>> querySealType() {
		// TODO Auto-generated method stub
		return sealtypedao.querySealType();
	}

	@Override
	public int insSealType() {
		// TODO Auto-generated method stub
		return sealtypedao.insSealType();
	}

}
