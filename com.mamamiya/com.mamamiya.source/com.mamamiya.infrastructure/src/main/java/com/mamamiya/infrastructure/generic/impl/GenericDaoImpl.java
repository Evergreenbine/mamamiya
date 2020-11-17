package com.mamamiya.infrastructure.generic.impl;

import com.mamamiya.infrastructure.generic.GenericDao;
import org.mybatis.spring.SqlSessionTemplate;

import java.util.Map;

public class GenericDaoImpl implements GenericDao {

    private SqlSessionTemplate sqlSessionTemplate;

    public GenericDaoImpl(SqlSessionTemplate sqlSessionTemplate) {
        this.sqlSessionTemplate = sqlSessionTemplate;
    }

    protected String getStatement(String verification){
        return verification;
    }

    public SqlSessionTemplate getSqlSessionTemplate(){
        return sqlSessionTemplate;
    }

    @Override
    public <T> int create(String verification, T t) {
        return 0;
    }

    @Override
    public <T> int update(String verification, T t) {
        return 0;
    }

    @Override
    public <T> int delete(String verification, T t) {
        return 0;
    }

    @Override
    public <T> int deleteBy(String verification, Map<String, Object> param) {
        return 0;
    }

    @Override
    public <T> T findExactBy(String verification, Map<String, Object> param) {
        return null;
    }

    public <T> T findById(String verification, Long id){
        String stetement = this.getStatement(verification);
        return this.getSqlSessionTemplate().selectOne(stetement);
    }

}
