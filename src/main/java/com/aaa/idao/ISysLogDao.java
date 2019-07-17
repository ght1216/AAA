package com.aaa.idao;

import java.util.List;
import java.util.Map;

public interface ISysLogDao {
	// 查询系统日志
	List<Map<String, Object>> querySysLog();
}
