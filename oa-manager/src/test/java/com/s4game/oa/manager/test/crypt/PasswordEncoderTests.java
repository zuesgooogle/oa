//package com.s4game.oa.manager.test.crypt;
//
//import org.junit.Before;
//import org.junit.Test;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//
//import com.s4game.oa.manager.test.BaseTest;
//
//public class PasswordEncoderTests extends BaseTest {
//
//	private PasswordEncoder passwordEncoder;
//	
//	@Before
//	public void setUp() throws Exception {
//		passwordEncoder = new BCryptPasswordEncoder();
//	}
//	
//	@Test
//	public void encoder() {
//		String password = passwordEncoder.encode("123456");
//		System.out.println(password);
//	}
//}
