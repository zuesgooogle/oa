package com.s4game.oa.manager.service.imple;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.s4game.oa.common.entity.CostSubject;
import com.s4game.oa.common.mapper.CostSubjectMapper;
import com.s4game.oa.manager.service.ICostSubjectService;

@Service
public class CostSubjectServiceImpl implements ICostSubjectService {

	@Autowired
	private CostSubjectMapper subjectMapper;
	
	@Override
	public List<CostSubject> getSubjects() {
		return subjectMapper.selectAll();
	}

}
