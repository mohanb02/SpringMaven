package com.mohanb.maven.maven_spring;

/**
 * Hello world!
 *
 */
import org.springframework.stereotype.Service;

@Service("helloWorldService")
public class HelloWorldService {
 
	private String name;
 
	public void setName(String name) {
		this.name = name;
	}
 
	public String sayHello() {
		return "Hello! " + name;
	}
}