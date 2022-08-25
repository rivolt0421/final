package kr.co.goodchoice.config;

import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import kr.co.goodchoice.argumentResolver.LoginUserArgumentResolver;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

//	@Bean
//	public PasswordEncoder passwordEncoder() {
//		return new PasswordEncoder();
//	}
	
	@Override
	public void addArgumentResolvers(List<HandlerMethodArgumentResolver> resolvers) {
		WebMvcConfigurer.super.addArgumentResolvers(resolvers);
		
		resolvers.add(new LoginUserArgumentResolver());
	}
}