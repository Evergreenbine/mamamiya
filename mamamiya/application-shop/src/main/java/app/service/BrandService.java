package app.service;

import app.vo.Brand;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface BrandService {

    List<Brand> list();

    List<Brand> listWithLimit(int limit, HttpServletRequest req);

    Brand selectOne(Integer bid);

    boolean deleteOne(Integer bid);

    boolean updateOrDeleteOne(Integer bid);





}
