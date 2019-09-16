package com.skilldistillery.midterm.boot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.skilldistillery.midterm")
@EntityScan("com.skilldistillery.midterm")
public class SkillsApplication {

	public static void main(String[] args) {
		SpringApplication.run(SkillsApplication.class, args);
	}

}
