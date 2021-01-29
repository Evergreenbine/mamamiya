package app.service;

import app.vo.Brand;

import java.util.List;

public interface BrandService {

    List<Brand> list();

    Brand selectOne(Integer bid);

    boolean deleteOne(Integer bid);

    boolean updateOrDeleteOne(Integer bid);



}
