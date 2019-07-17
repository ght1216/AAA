package com.aaa.idao;

import java.util.List;
import java.util.Map;

public interface ISealTypeDao {
	// 获取印章类别信息
	List<Map<String, Object>> querySealType();

	// 添加印章类别
	int insSealType();
}
