package com.s4game.oa.manager.web;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.s4game.oa.common.response.Response;
import com.s4game.oa.manager.service.IFileService;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;

@RequestMapping("/file")
@Api(value = "文件上传", description = "文件上传")
@RestController
public class FileController {

	@Autowired
	private IFileService fileService;

	@ApiOperation(value = "上传文件")
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public Response upload(@RequestParam(value = "file") MultipartFile file) throws Exception {
		Response.Builder response = Response.newBuilder();
		
		String result = fileService.upload(file);
		response.setData(result);
		
		return response.build();
	}

}
