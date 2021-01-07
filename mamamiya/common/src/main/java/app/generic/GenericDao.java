package app.generic;


import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;

import java.util.List;


public interface GenericDao  {

    SqlSessionTemplate sqlSessionTemplate();

    <T> T selectOne(String statement);

    <T> T selectOne(String statement,Object params);

    <T> List<T> selectList(String statement,Object params);

    <T> List<T> selectList(String statement, Object params, RowBounds rowBounds);

    int create(String statement,Object params);

    int updateOrDelete(String statement,Object params);


}
