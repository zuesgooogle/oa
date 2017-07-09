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
import com.s4game.oa.common.entity.News;
import com.s4game.oa.common.mapper.NewsMapper;
import com.s4game.oa.common.response.Response;
import com.s4game.oa.common.service.PageService;
import com.s4game.oa.manager.utils.WebUtils;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

@RequestMapping("/news")
@RestController
@Api(value = "news", description = "新闻管理")
public class NewsController {

	@Autowired
	private PageService<News> pageService;

	@Autowired
	private NewsMapper newsMapper;

	@ApiOperation(value = "新闻列表")
	@RequestMapping(value = "/list")
	public Response list(
			@ApiParam(value = "当前页数") @RequestParam(value = "page", required = false, defaultValue = PageConstants.PAGE) Integer page,
			@ApiParam(value = "每页数量") @RequestParam(value = "limit", required = false, defaultValue = PageConstants.LIMIT) Integer limit) {
		Response.Builder response = Response.newBuilder();

		PageInfo<News> pageInfo = pageService.selectPage(new News(), new Page<News>(page, limit));
		response.setData(pageInfo.getList());
		response.setTotalCount(pageInfo.getTotal());

		return response.build();
	}

	@ApiOperation(value = "保存新闻")
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Response update(@ApiParam(value = "新闻Id") @RequestParam(value = "id", required = false) Integer id,
			@ApiParam(value = "标题") @RequestParam(value = "title") String title,
			@ApiParam(value = "内容") @RequestParam(value = "content") String content,
			@ApiParam(value = "主图") @RequestParam(value = "mainImgUrl") String mainImgUrl,
			@ApiParam(value = "是否推送") @RequestParam(value = "push", required = false, defaultValue = "false") Boolean push) {
		Response.Builder response = Response.newBuilder();

		News news = null;
		if (WebUtils.isAdd(id)) {
			news = new News();
			news.setTitle(title);
			news.setContent(content);
			news.setMainImgUrl(mainImgUrl);
			String summary = content.length() > 100 ? content.substring(0, 100) : content;
			news.setSumary(summary);
			news.setCreateId(0);
			news.setCreateTime(new Date());

			newsMapper.insert(news);
		} else {
			news = newsMapper.selectByPrimaryKey(id);
			news.setTitle(title);
			news.setContent(content);
			news.setMainImgUrl(mainImgUrl);
			String summary = content.length() > 100 ? content.substring(0, 100) : content;
			news.setSumary(summary);

			newsMapper.updateByPrimaryKey(news);
		}

		return response.build();
	}

	@ApiOperation(value = "删除新闻")
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Response delete(@ApiParam(value = "当前页面") @RequestParam(value = "id") Integer id) {
		Response.Builder response = Response.newBuilder();

		int result = newsMapper.deleteByPrimaryKey(id);

		response.setData(result);
		return response.build();
	}
}
