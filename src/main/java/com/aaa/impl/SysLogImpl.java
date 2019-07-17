package com.aaa.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.idao.ISysLogDao;
import com.aaa.service.SysLogService;

@Service
public class SysLogImpl implements SysLogService {

	@Autowired
	private ISysLogDao syslogdao;

	@Override
	public List<Map<String, Object>> querySysLog() {
		// TODO Auto-generated method stub
		return syslogdao.querySysLog();
	}

}
