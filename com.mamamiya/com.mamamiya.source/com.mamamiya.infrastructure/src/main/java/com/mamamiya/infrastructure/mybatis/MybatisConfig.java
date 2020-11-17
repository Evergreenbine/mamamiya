package com.mamamiya.infrastructure.mybatis;

import com.alibaba.druid.pool.DruidDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.boot.autoconfigure.ConfigurationCustomizer;
import org.springframework.boot.autoconfigure.jdbc.DataSourceProperties;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;


@Configuration
public class MybatisConfig {

        @Bean
        @ConfigurationProperties(prefix = "spring.datasource")
        public DataSourceProperties dataSourceProperties(){
            return new DataSourceProperties();
        }

        @Bean(name = "druidDataSource")
        public DruidDataSource dataSource(DataSourceProperties properties) {
            DruidDataSource dataSource = (DruidDataSource) properties.initializeDataSourceBuilder().build();
            return dataSource;
        }

       @Bean
       public SqlSessionFactory sqlSessionFactory(DruidDataSource druidDataSource) {
          SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
          sqlSessionFactoryBean.setDataSource(druidDataSource);
          SqlSessionFactory sqlSessionFactory = null;
           try {
               ResourcePatternResolver resolver =new PathMatchingResourcePatternResolver();
               sqlSessionFactoryBean.setMapperLocations(resolver.getResources("classpath*:*Mapper.xml"));
               sqlSessionFactory = sqlSessionFactoryBean.getObject();
           } catch (Exception e) {
               e.printStackTrace();
           }
           return sqlSessionFactory;
       }

       @Bean
       public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory){
          return new SqlSessionTemplate(sqlSessionFactory);
       }

       /*
       *  mybatis配置
       * */
      @Bean
      public ConfigurationCustomizer mybatisConfigurationCustomizer() {
          return new ConfigurationCustomizer() {
             @Override
             public void customize(org.apache.ibatis.session.Configuration configuration) {

             }
          };
        }


}
