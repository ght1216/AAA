package com.aaa.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aaa.service.SysLogService;

@Controller
public class SysLogController {
	@Autowired
	private SysLogService logSer;

	@RequestMapping("selLog")
	public String selLog(Model model) {
		List<Map<String, Object>> querySysLog = logSer.querySysLog();
		if (querySysLog != null && querySysLog.size() > 0) {
			model.addAttribute("querySysLog", querySysLog);
			return "SysLog";
		}
		return "";
	}
}
