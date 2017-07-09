package com.s4game.oa.manager.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.aliyun.oss.OSSClient;

@Configuration
@ConfigurationProperties(prefix = "aliyun.oss")
public class AliyunConfig {

	private String accessKeyId;

	private String secretAccessKey;

	private String endpoint;

	private String bucktName;

	private String hostName;

	public String getAccessKeyId() {
		return accessKeyId;
	}

	public void setAccessKeyId(String accessKeyId) {
		this.accessKeyId = accessKeyId;
	}

	public String getSecretAccessKey() {
		return secretAccessKey;
	}

	public void setSecretAccessKey(String secretAccessKey) {
		this.secretAccessKey = secretAccessKey;
	}

	public String getEndpoint() {
		return endpoint;
	}

	public void setEndpoint(String endpoint) {
		this.endpoint = endpoint;
	}

	public String getBucktName() {
		return bucktName;
	}

	public void setBucktName(String bucktName) {
		this.bucktName = bucktName;
	}

	public String getHostName() {
		return hostName;
	}

	public void setHostName(String hostName) {
		this.hostName = hostName;
	}

	@Bean(destroyMethod = "shutdown")
	public OSSClient ossClient() {
		return new OSSClient(endpoint, accessKeyId, secretAccessKey);
	}
}
