//package com.s4game.oa.manager.config;
//
//import java.io.IOException;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.builders.WebSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.AuthenticationException;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.web.authentication.AuthenticationFailureHandler;
//import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
//
//import com.fasterxml.jackson.databind.ObjectMapper;
//import com.s4game.oa.common.response.Response;
//import com.s4game.oa.manager.service.IUserService;
//
//@Configuration
//@EnableWebSecurity
//public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
//
//	@Autowired
//	private IUserService userService;
//	
//	@Autowired
//	private ObjectMapper objectMapper;
//
//    @Override
//    public void configure(WebSecurity web) throws Exception {
//        web.ignoring().antMatchers("/ws/api-docs", "/configuration/ui", "/swagger-resources", "/configuration/security", "/swagger-ui.html", "/webjars/**");
//    }
//	
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//		http.csrf().disable();
//		
//		http.authorizeRequests()
//			.antMatchers("/", "/lib/*", "/images/*", "/css/*", "/swagger-ui.js","/swagger-ui.min.js", "/api-docs", "/fonts/*", "/api-docs/*", "/api-docs/default/*", "/o2c.html", "index.html").permitAll()
////		    .anyRequest().fullyAuthenticated()
//		    .anyRequest().permitAll()
//			.and()
//		    
//		    .cors().and()
//		    
//		    .formLogin()
//		    	.loginPage("/login")
//		    	.successHandler(new LoginSuccessHandler())
//		    	.failureHandler(new LoginFailureHandler())
//		    	.permitAll()
//		    .and()
//		    .logout().logoutUrl("/logout").permitAll();
//		
//	}
//	
//	@Override
//	protected void configure(AuthenticationManagerBuilder builder) throws Exception {
//		builder.userDetailsService(userService).passwordEncoder(passwordEncoder());
//	}
//
//	@Bean
//	public PasswordEncoder passwordEncoder() {
//		return new BCryptPasswordEncoder();
//	}
//
//	private class LoginSuccessHandler implements AuthenticationSuccessHandler {
//
//		@Override
//		public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
//				Authentication authentication) throws IOException, ServletException {
//			Response result = Response.newBuilder().success().build();
//			
//			String json = objectMapper.writeValueAsString(result);
//			response.getWriter().print(json);
//		}
//		
//	}
//	
//	private class LoginFailureHandler implements AuthenticationFailureHandler {
//
//		@Override
//		public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
//				AuthenticationException exception) throws IOException, ServletException {
//			Response result = Response.newBuilder().failure(exception.getMessage()).build();
//			
//			String json = objectMapper.writeValueAsString(result);
//			response.getWriter().print(json);
//		}
//		
//	}
//}
