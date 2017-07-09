package com.s4game.oa.manager.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.aliyun.oss.OSSClient;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.s4game.oa.manager.config.AliyunConfig;
import com.s4game.oa.manager.service.IFileService;

@Service
public class FileServiceImpl implements IFileService {

	@Autowired
	private ObjectMapper jacksonObjectMapper;

	@Autowired
	private OSSClient ossClient;

	@Autowired
	private AliyunConfig aliyunConfig;

	private SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
	
	@Override
	public String upload(MultipartFile file) throws Exception {
		String originalFilename = file.getOriginalFilename();
		int indexOf = file.getOriginalFilename().lastIndexOf(".");

		String filename = originalFilename.substring(0, indexOf);
		String fileType = originalFilename.substring(indexOf + 1, originalFilename.length());

		ObjectNode json = jacksonObjectMapper.createObjectNode();

		String dateTime = dateFormat.format(new Date());
		String uploadFilename = filename + "-" + dateTime + "." + fileType;
		ossClient.putObject(aliyunConfig.getBucktName(), uploadFilename, file.getInputStream());

		json.put("contentType", fileType);
		json.put("size", file.getSize());
		json.put("fileUrl", aliyunConfig.getHostName() + uploadFilename);
		json.put("originalFileName", file.getOriginalFilename());

		return json.toString();
	}
}
