package app.service;

import app.generic.GenericDao;
import app.service.impl.BbsService;
import app.vo.Circle;
import app.vo.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BbsServiceImpl implements BbsService {

    @Autowired
    private GenericDao genericDao;

    private final static String statement = Circle.class.getName() + ".";
//    private final static String postStatement = Post.class.getName()+".";

    @Override
    public List<Circle> listCircle() {
        List<Circle> circleList = genericDao.selectList(statement + "listCircle", null);
//        查询每个圈子的关注人数
        for (Circle circle : circleList) {
            Integer follow = follow(circle.getCid());
            circle.setFollownums(follow);
        }
        return circleList;
    }

    //获取贴子
    @Override
    public List<Post> getPost(Map m) {
        List<Post> post = null;
        try {
            post = genericDao.selectList(statement + "queryPost", m);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return post;
    }

    //    保存贴子
    @Override
    public Integer savePost(Post post) {
        int i = 1;
        try {
            genericDao.create(statement + "createPost", post);
        } catch (Exception e) {
            i = 0;
            e.printStackTrace();
        }
        return i;
    }

    //    保存圈子
    public Integer saveCircle(Circle circle) {
        int i = 1;
        try {
            genericDao.create(statement + "createCircle", circle);
        } catch (Exception e) {
            i = 0;
            e.printStackTrace();
            System.out.println("保存圈子出错");
        }
        return i;
    }

    //    删除贴子或圈子
    @Override
    public Integer deleteCirlceOrPost(HashMap map) {
        int i = 1;
        try {
//            pid 和 cid 必须传一个 不然数据库报错的
//          如果是级联删除的话  先删除对应的贴子
            genericDao.updateOrDelete(statement + "deletepost", map);
//            后删除圈子
            if (map.get("cid") != null) {
                genericDao.updateOrDelete(statement + "deletecircle", map);
            }
        } catch (Exception e) {
            i = 0;
            e.printStackTrace();
            System.out.println("删除贴子或圈子错误");
        }
        return i;
    }

//    查询圈子的关注人数

    @Override
    public Integer follow(int cid) {
        try {
            Circle circle = genericDao.selectOne(statement + "follonums", cid);

            return circle.getFollownums();
        }catch (Exception e) {
            System.out.println("查询圈子关注人数失败");
            return -1;
        }
    }
}
