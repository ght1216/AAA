package com.aaa.service;

import java.util.List;
import java.util.Map;

public interface SealTypeService {

	// 获取印章类别信息
	List<Map<String, Object>> querySealType();

	// 添加印章类别
	int insSealType();
}
