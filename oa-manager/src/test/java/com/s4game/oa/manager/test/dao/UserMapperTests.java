package com.s4game.oa.manager.test.dao;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.Date;

import org.junit.BeforeClass;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;

import com.s4game.oa.common.entity.User;
import com.s4game.oa.common.mapper.UserMapper;
import com.s4game.oa.manager.test.BaseTest;

//@Transactional //开启后，每个test 自动回滚数据
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class UserMapperTests extends BaseTest {

	@Autowired
	private UserMapper userMapper;

	private static User testUser;

	@BeforeClass
	public static void init() throws Exception {
		testUser = new User();
		testUser.setUsername("test");
		testUser.setPassword("123456");
		testUser.setDeleted((byte) 0);
		testUser.setCreateTime(new Date());
	}

	@Test
	public void test001Insert() throws Exception {
		int result = userMapper.insert(testUser);
		assertThat(result > 0);
	}

	@Test
	public void test002SelectByUsername() throws Exception {
		User user = userMapper.selectByUsername(testUser.getUsername());
		assertThat(user).isNotNull();
		assertThat(user.getUsername()).isEqualTo(testUser.getUsername());
	}

	@Test
	public void test003DeleteByPrimaryKey() throws Exception {
		int result = userMapper.deleteByPrimaryKey(testUser.getId());
		assertThat(result > 0);
	}
}
