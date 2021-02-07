package app.service.impl;

import app.vo.Circle;
import app.vo.Post;

import java.util.List;
import java.util.Map;

public interface BbsService {
    List<Circle> listCircle();

    Integer savePost(Post post);
}
