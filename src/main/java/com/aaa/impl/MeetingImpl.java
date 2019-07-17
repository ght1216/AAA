package com.aaa.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.entity.MeetingVo;
import com.aaa.idao.IMeetingDao;
import com.aaa.service.MeetingService;

@Service
public class MeetingImpl implements MeetingService {
	@Autowired
	private IMeetingDao meetingdao;

	@Override
	public List<Map<String, Object>> queryMeetingAll() {
		// TODO Auto-generated method stub
		return meetingdao.queryMeetingAll();
	}

	@Override
	public int insMeeting(MeetingVo meeting) {
		// TODO Auto-generated method stub
		return meetingdao.insMeeting(meeting);
	}

}
