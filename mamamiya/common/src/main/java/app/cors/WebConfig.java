package app.cors;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/* mvc配置*/
@Configuration
@EnableWebMvc
public class WebConfig implements WebMvcConfigurer {

    /* 配置跨域*/
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/app/**")
                .allowedOrigins("http://localhost:9000")
                .allowedMethods("POST","GET")
                .allowedHeaders("*")
                .allowCredentials(true).maxAge(3600);
    }
}
