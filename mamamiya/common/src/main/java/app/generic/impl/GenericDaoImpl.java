package app.generic.impl;

import app.generic.GenericDao;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.List;

/*
 *   关系数据库的基础操作类
 * */
@Component
public class GenericDaoImpl implements GenericDao {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    @Autowired
    private BeanFactory beanFactory;

    public SqlSessionTemplate sqlSessionTemplate() {
        return this.sqlSessionTemplate;
    }

    /* 无参数查找一条记录*/

    @Override
    public <T> T selectOne(String statement) {
        T t = sqlSessionTemplate.selectOne(statement);
        return t;
    }
  /*
        根据参数去查找一条记录,使用ParamsResolver是为了更好去扩展不同的参数
    * */

    @Override
    public <T> T selectOne(String statement, Object o) {
        T t = sqlSessionTemplate.selectOne(statement, o);
        return t;
    }
    /*
     *  根据statement去查找一个集合
     * */
    @Override
    public <T> List<T> selectList(String statement, Object params) {
        List<T> t = sqlSessionTemplate.selectList(statement, params);
        return t;
    }
    /*
     *   根据参数去查找一个list集合,也可用于带参数的分页查询
     * */
    public <T> List<T> selectList(String statement, Object params, RowBounds rowBounds){
        List<T> t = sqlSessionTemplate.selectList(statement, params, rowBounds);
        return t;
    }

    /* 带参数插入*/
    public int create(String statement,Object params){
        int tag = sqlSessionTemplate.insert(statement, params);
        return tag;
    }

    /*
     *  更新或删除,删除不实际删除,而是修改标志位
     * */
    public int updateOrDelete(String statement,Object params){
        int update = sqlSessionTemplate.update(statement, params);
        return update;
    }

    public void getDataSource(){
        DataSource bean = (DataSource) beanFactory.getBean("customedDruidDataSource");

        System.out.println(bean.getClass().getName());

    }
}
