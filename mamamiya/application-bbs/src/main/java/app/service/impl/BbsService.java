package app.service.impl;

import app.vo.Circle;
import app.vo.Post;
import app.vo.ReplyPost;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface BbsService {

    List<Post> mostreply();

    List<Circle> listCircle();

    Integer savePost(Post post);

    List<Post> getPost(Map m);

    Integer saveCircle(Circle circle);

    Integer deleteCirlceOrPost(HashMap map);

//
    Integer follow(int cid);

    Integer foucsCircle(HashMap map);

    Integer isfollow(HashMap map);

    Integer nofollow(HashMap map);

     List<Map> countofbbs();
    List<Map> numsOfCircle();
    List<Map> useNumsOfQues();





//    插入浏览记录
Integer lookuppost(Integer pid);


 Integer updatePost(HttpServletRequest req,Post post);


}
