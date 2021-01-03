import com.alibaba.druid.pool.DruidDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.jdbc.DataSourceProperties;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Primary;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;

/*
*   基础工具类
*   mybatis通用操作类
*   redis通用操作类
*   execel通用操作类
*   文件上传通用操作类
*   定时任务通用操作类
*   elastic search 通用操作类
*   jwt通用操作类
*   短信服务
*   定位服务等
* */
//public class packageInfo {
    /*
            参考链接：
            http://mybatis.org/spring-boot-starter/mybatis-spring-boot-autoconfigure/index.html
            http://mybatis.org/spring/zh/factorybean.html
        */
    //@Configuration
    /* 废弃测试*/
//    public static class MybatisConfig {
//
//        /* ConfigurationProperties : 读取配置文件里前缀为“spring.datasource”的属性*/
//       @Bean("data222")
//       @Primary
//       @ConfigurationProperties(prefix = "spring.datasource")
//       public DataSourceProperties dataSourceProperties(){
//           return new DataSourceProperties();
//       }
//
//       @Bean(name = "druidDataSource")
//       public DruidDataSource dataSource(@Qualifier("data222") DataSourceProperties properties) {
//           DruidDataSource druidDataSource = (DruidDataSource) properties.initializeDataSourceBuilder().build();
//           return druidDataSource;
//       }
//
//       @Bean("ship")
//       public SqlSessionFactory sqlSessionFactory(DruidDataSource druidDataSource) {
//           SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
//           sqlSessionFactoryBean.setDataSource(druidDataSource);
//           SqlSessionFactory sqlSessionFactory = null;
//           try {
//               ResourcePatternResolver resolver =new PathMatchingResourcePatternResolver();
//               sqlSessionFactoryBean.setMapperLocations(resolver.getResources("classpath*:*Mapper.xml"));
//               sqlSessionFactory = sqlSessionFactoryBean.getObject();
//           } catch (Exception e) {
//               e.printStackTrace();
//           }
//           return sqlSessionFactory;
//       }
//
//       @Bean(value = "mysql")
//       @Primary
//       public SqlSessionTemplate sqlSessionTemplate(@Qualifier("ship") SqlSessionFactory sqlSessionFactory){
//           return new SqlSessionTemplate(sqlSessionFactory);
//       }
//
//    }
//}
