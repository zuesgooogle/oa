package com.s4game.oa.manager.start;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.event.ApplicationEnvironmentPreparedEvent;
import org.springframework.boot.context.event.ApplicationFailedEvent;
import org.springframework.boot.context.event.ApplicationPreparedEvent;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.boot.context.event.ApplicationStartingEvent;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.ApplicationListener;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan(basePackages = { "com.s4game" })
@EnableAutoConfiguration
public class Application extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication application = new SpringApplication(Application.class);
		application.addListeners(new ApplicationListenerEnvironmentPrepared());
		application.addListeners(new ApplicationListenerFailed());
		application.addListeners(new ApplicationListenerPrepared());
		application.addListeners(new ApplicationListenerStarted());
		application.run(args);
	}

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		builder.application().addListeners(new ApplicationListenerEnvironmentPrepared());
		builder.application().addListeners(new ApplicationListenerFailed());
		builder.application().addListeners(new ApplicationListenerPrepared());
		builder.application().addListeners(new ApplicationListenerStarted());
		return builder.sources(Application.class);
	}

}

class ApplicationListenerRefreshed implements ApplicationListener<ApplicationReadyEvent> {

	@Override
	public void onApplicationEvent(ApplicationReadyEvent event) {

	}

}

class ApplicationListenerEnvironmentPrepared implements ApplicationListener<ApplicationEnvironmentPreparedEvent> {
	@Override
	public void onApplicationEvent(ApplicationEnvironmentPreparedEvent event) {
		System.out.println(getClass().getSimpleName());
	}
}

class ApplicationListenerFailed implements ApplicationListener<ApplicationFailedEvent> {
	@Override
	public void onApplicationEvent(ApplicationFailedEvent event) {
		System.out.println(getClass().getSimpleName());
	}

}

class ApplicationListenerPrepared implements ApplicationListener<ApplicationPreparedEvent> {
	@Override
	public void onApplicationEvent(ApplicationPreparedEvent event) {
	}

}

class ApplicationListenerStarted implements ApplicationListener<ApplicationStartingEvent> {
	@Override
	public void onApplicationEvent(ApplicationStartingEvent event) {
		System.out.println(getClass().getSimpleName());
	}

}