package app.generic.impl;

import app.Test.Book;
import app.generic.GenericDao;
import org.apache.ibatis.mapping.Environment;
import org.apache.ibatis.session.Configuration;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.boot.autoconfigure.MybatisAutoConfiguration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class GenericDaoImpl implements GenericDao {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;


    @Override
    public <T> T Select(String statement) {
        T o = sqlSessionTemplate.selectOne(statement);

        System.out.println(sqlSessionTemplate.getMapper(Book.class));


        return o;
    }
}
