package app.service.impl;

import app.generic.GenericDao;
import app.service.UserService;
import app.utils.Params;
import app.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private GenericDao genericDao;

    @Override
    public User findUser(Params<User> params) {
        String statement = User.class.getName();
        User u = params.getParams();
        User user = genericDao.selectOne(statement+"."+"findUser", u);
        return user;
    }
}
