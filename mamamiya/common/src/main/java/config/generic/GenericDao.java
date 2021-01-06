package config.generic;

import config.utils.ParamsResolver;
import org.mybatis.spring.SqlSessionTemplate;

import java.util.List;

public interface GenericDao  {

    SqlSessionTemplate sqlSessionTemplate();

    <T> T selectOne(String statement);

    <T> T selectOne(String statement, ParamsResolver params);

    <T> List<T> selectList(String statement, ParamsResolver params);

    <T> List<T> selectList(String statement);

    int insert(String statement, ParamsResolver paramsResolver);

    int updateOrDelete(String statement, ParamsResolver paramsResolver);


}
