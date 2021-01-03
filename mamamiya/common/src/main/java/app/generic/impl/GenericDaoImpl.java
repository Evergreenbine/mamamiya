package app.generic.impl;

import app.generic.GenericDao;
import app.utils.ParamsResolver;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/*
 *   关系数据库的基础操作类
 * */
@Component
public class GenericDaoImpl implements GenericDao {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public SqlSessionTemplate sqlSessionTemplate() {
        return this.sqlSessionTemplate;
    }

    /* 无参数查找一条记录*/
    public <T> T selectOne(String statement) {
        T t = sqlSessionTemplate.selectOne(statement);
        return t;
    }

    /*
        根据参数去查找一条记录,使用ParamsResolver是为了更好去扩展不同的参数
    * */
    public <T> T selectOne(String statement, ParamsResolver params) {
        T t = sqlSessionTemplate.selectOne(statement, params);
        return t;
    }

    /*
     *  根据statement去查找一个集合
     * */
    public <T> List<T> selectList(String statement) {
        List<T> t = sqlSessionTemplate.selectList(statement);
        return t;
    }

    /*
     *   根据参数去查找一个list集合,也可用于带参数的分页查询
     * */
    public <T> List<T> selectList(String statement, ParamsResolver params) {
        List<T> t = sqlSessionTemplate.selectList(statement, params);
        return t;
    }

    /* 带参数插入*/
    public int insert(String statement, ParamsResolver paramsResolver) {
        int i = sqlSessionTemplate.insert(statement, paramsResolver);
        return i;
    }

    /*
     *  更新或删除,删除不实际删除,而是修改标志位
     * */
    public int updateOrDelete(String statement, ParamsResolver paramsResolver) {
        int update = sqlSessionTemplate.update(statement, paramsResolver);
        return update;
    }


}
