package com.s4game.oa.manager.config;

import java.io.IOException;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.core.convert.support.GenericConversionService;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.web.bind.support.ConfigurableWebBindingInitializer;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.multipart.support.MultipartFilter;
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
	@Qualifier("jacksonObjectMapper")
	private ObjectMapper jacksonObjectMapper;

	@Override
	public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
		NullSerializer serializer = new NullSerializer();
		jacksonObjectMapper.getSerializerProvider().setNullValueSerializer(serializer);
		super.configureMessageConverters(converters);
	}

	@Override
	public void configurePathMatch(PathMatchConfigurer configurer) {
		super.configurePathMatch(configurer);
	}

	@Autowired
	private RequestMappingHandlerAdapter handlerAdapter;

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

	// @Override
	// public void addInterceptors(InterceptorRegistry registry) {
	// UserAuthInteceptor inteceptor = new UserAuthInteceptor();
	// inteceptor.setRedisTemplate(redisTemplate);
	// registry.addInterceptor(inteceptor);
	// super.addInterceptors(registry);
	// }

	// @Bean
	// public CorsFilter corsFilter() {
	// final UrlBasedCorsConfigurationSource urlBasedCorsConfigurationSource =
	// new UrlBasedCorsConfigurationSource();
	// final CorsConfiguration corsConfiguration = new CorsConfiguration();
	// corsConfiguration.setAllowCredentials(false);
	// corsConfiguration.addAllowedOrigin("*");
	// corsConfiguration.addAllowedHeader("*");
	// corsConfiguration.addAllowedMethod("*");
	// corsConfiguration.setMaxAge(3600l);
	// urlBasedCorsConfigurationSource.registerCorsConfiguration("/**",
	// corsConfiguration);
	// return new CorsFilter(urlBasedCorsConfigurationSource);
	// }

	@Override
	public void addCorsMappings(CorsRegistry registry) {
		// TODO Auto-generated method stub
		registry.addMapping("/**").allowCredentials(true).allowedHeaders("*").allowedMethods("*").allowedOrigins("*")
				.maxAge(3600);
		super.addCorsMappings(registry);
	}

	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
		multipartResolver.setDefaultEncoding("UTF-8");
		multipartResolver.setMaxUploadSize(300 * 1024 * 1024);
		return multipartResolver;
	}

	@Bean
	@Order(0)
	public MultipartFilter multipartFilter() {
		MultipartFilter multipartFilter = new MultipartFilter();
		multipartFilter.setMultipartResolverBeanName("multipartResolver");
		return multipartFilter;
	}

	// @Bean
	// public CharacterEncodingFilter characterEncodingFilter() {
	// CharacterEncodingFilter filter = new CharacterEncodingFilter();
	// filter.setEncoding("UTF8");
	// filter.setForceEncoding(true);
	// return filter;
	// }

	class NullSerializer extends JsonSerializer<Object> {

		public void serialize(Object value, JsonGenerator jgen, SerializerProvider provider)
				throws IOException, JsonProcessingException {
			jgen.writeNull();
		}
	}
}
