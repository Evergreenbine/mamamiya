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

    private final static String statement = Circle.class.getName()+".";
//    private final static String postStatement = Post.class.getName()+".";

    @Override
    public List<Circle> listCircle() {
        List<Circle> circleList = genericDao.selectList(statement+"listCircle",null);
        return circleList;
    }

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

}