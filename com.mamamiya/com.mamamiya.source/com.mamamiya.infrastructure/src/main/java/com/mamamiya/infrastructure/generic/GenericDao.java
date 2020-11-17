package com.mamamiya.infrastructure.generic;

import org.mybatis.spring.SqlSessionTemplate;

import java.util.Map;
/*
*  通用mybatis接口
*  根据不同的 verification 找到mybatis文件中的sql语句
*  T t 为操作参数
* */
public interface GenericDao {

    SqlSessionTemplate getSqlSessionTemplate();

    <T> int create(String verification,T t);

    <T> int update(String verification,T t);

    <T> int delete(String verification,T t);

    <T> int deleteBy(String verification, Map<String,Object> param);

    <T> T findExactBy(String verification, Map<String,Object> param);




}
