package com.aaa.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aaa.entity.MeetingVo;
import com.aaa.service.MeetingService;

@Controller
public class MeetingController {

	@Autowired
	private MeetingService mSer;

	/**
	 * 进会议室列表页面
	 * 
	 * @return
	 * @author:郭浩天
	 * @创建时间:2019年7月17日下午5:24:58
	 */
	@RequestMapping("meeting")
	public String meeting() {
		return "meeting";
	}

	/**
	 * 查询会议室
	 * 
	 * @param model
	 * @return
	 * @author:郭浩天
	 * @创建时间:2019年7月17日下午5:24:50
	 */
	@RequestMapping("selMeeting")
	public String selMeeting(Model model) {
		List<Map<String, Object>> queryMeetingAll = mSer.queryMeetingAll();
		model.addAttribute("queryMeetingAll", queryMeetingAll);
		if (queryMeetingAll != null && queryMeetingAll.size() > 0) {
			return "meeting";// 跳珠到会议室列表页面
		}
		return "";
	}

	@RequestMapping("ins")
	public String ins() {
		return "insMeeting";
	}

	/**
	 * 添加会议室
	 * 
	 * @param meeting
	 * @return
	 * @author:郭浩天
	 * @创建时间:2019年7月17日下午5:24:30
	 */
	@RequestMapping("insMeeting")
	public String insMeeting(MeetingVo meeting) {
		int count = mSer.insMeeting(meeting);
		if (count > 0) {
			return "";
		}
		return "";
	}
}
