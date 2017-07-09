package com.s4game.oa.manager.web;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.s4game.oa.common.constants.PageConstants;
import com.s4game.oa.common.entity.CloudStorage;
import com.s4game.oa.common.mapper.CloudStorageMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/cloudstorage")
@Api(value = "/cloudstorage", description = "云盘")
public class CloudStorageController {

	@Autowired
	private PageService<CloudStorage> pageService;

	@Autowired
	private CloudStorageMapper cloudStorageMapper;

	@ApiOperation(value = "列表")
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false, defaultValue = PageConstants.PAGE) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false, defaultValue = PageConstants.LIMIT) Integer limit,
			@ApiParam(value = "目录ID") @RequestParam(value = "directoryId", required = false) Integer directoryId) {
		Response.Builder response = Response.newBuilder();

		CloudStorage storage = new CloudStorage();
		storage.setDirectoryId(0);

		PageInfo<CloudStorage> pageInfo = pageService.selectPage(storage, new Page<CloudStorage>(page, limit));
		response.setData(pageInfo.getList());
		response.setTotalCount(pageInfo.getTotal());

		return response.build();
	}

	@ApiOperation(value = "更新")
	@RequestMapping(value = "/update", method = { RequestMethod.GET, RequestMethod.POST })
	public Response update(@ApiParam(value = "ID") @RequestParam(value = "id", required = false) Integer id,
			@ApiParam(value = "文件名称") @RequestParam(value = "fileName", required = false) String fileName,
			@ApiParam(value = "文件地址") @RequestParam(value = "fileUrl", required = false) String fileUrl,
			@ApiParam(value = "文件夹类型") @RequestParam(value = "fileType", required = false) Byte fileType,
			@ApiParam(value = "大小") @RequestParam(value = "size", required = false) Long size,
			@ApiParam(value = "简介") @RequestParam(value = "sumary", required = false) String sumary,
			@ApiParam(value = "文件内容类型") @RequestParam(value = "contentType", required = false) String contentType,
			@ApiParam(value = "目录Id") @RequestParam(value = "directoryId", required = false) Integer directoryId,
			@ApiParam(value = "说明") @RequestParam(value = "remark", required = false) String remark) {
		Response.Builder response = Response.newBuilder();

		CloudStorage storage = new CloudStorage();
		if (WebUtils.isAdd(id)) {
			storage.setFileName(fileName);
			storage.setFileUrl(fileUrl);
			storage.setFileType(fileType);
			storage.setFileType(fileType);
			storage.setSize(size);
			storage.setSumary(sumary);
			storage.setContentType(contentType);
			storage.setDirectoryId(directoryId);
			storage.setRemark(remark);
			
			storage.setCreateTime(new Date());

			cloudStorageMapper.insert(storage);
		} else {
			storage.setId(directoryId);
			cloudStorageMapper.updateByPrimaryKeySelective(storage);
		}

		response.setData(storage);
		return response.build();
	}

	@ApiOperation(value = "删除")
	@RequestMapping(value = "/delete", method = { RequestMethod.GET, RequestMethod.POST })
	public Response delete(@ApiParam(value = "ID") @RequestParam(value = "id", required = true) Integer id) {
		Response.Builder response = Response.newBuilder();

		cloudStorageMapper.deleteByPrimaryKey(id);

		return response.build();
	}
}
