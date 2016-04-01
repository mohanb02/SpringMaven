package com.mohanb.maven.maven_spring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class MavenSpringbootApplication {

	public static void main(String[] args) {
		SpringApplication.run(MavenSpringbootApplication.class, args);
		System.out.println("Test from spring boot app");
	}
}
