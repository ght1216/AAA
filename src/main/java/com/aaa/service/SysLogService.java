package com.aaa.service;

import java.util.List;
import java.util.Map;

public interface SysLogService {
	// 查询系统日志
	List<Map<String, Object>> querySysLog();
}
