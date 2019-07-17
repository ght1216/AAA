package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.entity.MeetingVo;

public interface MeetingService {

	// 查询会议室
	List<Map<String, Object>> queryMeetingAll();

	// 添加会议室
	int insMeeting(MeetingVo meeting);
}
