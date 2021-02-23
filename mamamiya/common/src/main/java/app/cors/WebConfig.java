package app.cors;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/* mvc配置*/
@Configuration
@EnableWebMvc
public class WebConfig implements WebMvcConfigurer {

    /* 配置跨域*/
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/api/**")
                .allowedOrigins("http://localhost:8000","http://localhost:8080","http://localhost")
                .allowedMethods("POST","GET")
                .allowedHeaders("*")
                .allowCredentials(true).maxAge(3600);
    }

//    @Bean("multipartResolver")
//    public StandardServletMultipartResolver servletMultipartResolver(){
//        return  new StandardServletMultipartResolver();
//    }


    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        String path = "G:\\SchoolProject\\mamamiya\\mamamiya\\application-shop\\src\\main\\resources\\static\\";

//        为什么加file：,看下这个方法具体做什么用的
        registry.addResourceHandler("static/**").addResourceLocations("file:"+path);
    }
}
