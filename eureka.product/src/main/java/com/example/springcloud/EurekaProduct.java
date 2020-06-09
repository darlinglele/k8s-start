package com.example.springcloud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;


@SpringBootApplication
@EnableEurekaClient
public class EurekaProduct {
	public static void main(String[] args) {
		SpringApplication.run(EurekaProduct.class, args);
	}
}
