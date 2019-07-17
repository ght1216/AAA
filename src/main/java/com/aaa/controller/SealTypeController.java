package com.aaa.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aaa.service.SealTypeService;

@Controller
public class SealTypeController {

	@Autowired
	private SealTypeService sealTypeSer;

	@RequestMapping("querySeal")
	public String querySealType(Model model) {
		List<Map<String, Object>> sealTypeList = sealTypeSer.querySealType();
		model.addAttribute("sealTypeList", sealTypeList);

		return "SealType";
	}
}
