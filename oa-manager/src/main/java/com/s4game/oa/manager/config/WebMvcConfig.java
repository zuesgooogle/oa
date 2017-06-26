package com.s4game.oa.manager.config;

import java.io.IOException;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.convert.support.GenericConversionService;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.support.ConfigurableWebBindingInitializer;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.PathMatchConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.s4game.oa.common.convert.StringToDateConverter;

@Configuration
public class WebMvcConfig extends WebMvcConfigurerAdapter {

	@Autowired
	private ObjectMapper objectMapper;
	
	@Autowired
	private RequestMappingHandlerAdapter handlerAdapter;

	@Override
	public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
		 NullSerializer serializer = new NullSerializer();
		 objectMapper.getSerializerProvider().setNullValueSerializer(serializer);
		super.configureMessageConverters(converters);
	}

	@Override
	public void extendMessageConverters(List<HttpMessageConverter<?>> converters) {
		ObjectMapper objectMapper = null;
		for (HttpMessageConverter<?> converter : converters) {
			if (converter instanceof MappingJackson2HttpMessageConverter) {
				MappingJackson2HttpMessageConverter jacksonConverter = ((MappingJackson2HttpMessageConverter) converter);

				if (objectMapper == null) {
					objectMapper = jacksonConverter.getObjectMapper();
				} else {
					jacksonConverter.setObjectMapper(objectMapper);
				}
			}
		}
	}

	@Override
	public void configurePathMatch(PathMatchConfigurer configurer) {
		super.configurePathMatch(configurer);
	}

	@PostConstruct
	public void initEditableValidation() {
		ConfigurableWebBindingInitializer initializer = (ConfigurableWebBindingInitializer) handlerAdapter
				.getWebBindingInitializer();
		if (initializer.getConversionService() != null) {
			GenericConversionService genericConversionService = (GenericConversionService) initializer
					.getConversionService();
			genericConversionService.addConverter(new StringToDateConverter());
		}
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	// @Bean(name = "multipartResolver")
	// public CommonsMultipartResolver multipartResolver() {
	// CommonsMultipartResolver multipartResolver = new
	// CommonsMultipartResolver();
	// multipartResolver.setDefaultEncoding("UTF-8");
	// multipartResolver.setMaxUploadSize(300 * 1024 * 1024);
	// return multipartResolver;
	// }
	//
	// @Bean
	// @Order(0)
	// public MultipartFilter multipartFilter() {
	// MultipartFilter multipartFilter = new MultipartFilter();
	// multipartFilter.setMultipartResolverBeanName("multipartResolver");
	// return multipartFilter;
	// }

	@Override
	public void addCorsMappings(CorsRegistry registry) {
		registry.addMapping("/**")
				.allowCredentials(true)
				.allowedHeaders("*")
				.allowedMethods("*")
				.allowedOrigins("*")
				.maxAge(3600);
		super.addCorsMappings(registry);
	}

	class NullSerializer extends JsonSerializer<Object> {

		public void serialize(Object value, JsonGenerator jgen, SerializerProvider provider)
				throws IOException, JsonProcessingException {
			jgen.writeNull();
		}
	}
}
