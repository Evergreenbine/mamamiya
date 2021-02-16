package app.service.impl;

import app.vo.Circle;
import app.vo.Post;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface BbsService {
    List<Circle> listCircle();

    Integer savePost(Post post);

    List<Post> getPost(Map m);

    Integer saveCircle(Circle circle);

    Integer deleteCirlceOrPost(HashMap map);

    Integer follow(int cid);
}
