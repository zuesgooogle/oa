package com.s4game.oa.manager.service;

import org.springframework.web.multipart.MultipartFile;

public interface IFileService {

	/**
	 * 上传文件
	 * 
	 * @param file
	 * @return  返回文件路径
	 */
	public String upload(MultipartFile file) throws Exception;
	
}
