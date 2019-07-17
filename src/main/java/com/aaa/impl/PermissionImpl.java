package com.aaa.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.entity.UserVo;
import com.aaa.idao.IPermissionDao;
import com.aaa.service.PermissionService;

@Service
public class PermissionImpl implements PermissionService {

	@Autowired
	private IPermissionDao dao;

	@Override
	public List<Map<String, Object>> findByLoginRole(Integer RoleID) {

		return dao.findByLoginRole(RoleID);
	}

	@Override
	public int updPwd(UserVo uservo) {

		return dao.updPwd(uservo);
	}

	@Override
	public List<Map<String, Object>> login(UserVo uservo) {

		return dao.login(uservo);
	}

	@Override
	public List<Map<String, Object>> getUser(Integer rid, String uid) {

		return dao.getUser(uid, rid);
	}

	@Override
	public int sysLog(String uid) {

		return dao.sysLog(uid);
	}

}
