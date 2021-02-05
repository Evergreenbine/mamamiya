package app.service.impl;

import app.generic.GenericDao;
import app.service.UserService;
import app.utils.Params;
import app.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private GenericDao genericDao;

    private final static String statement = User.class.getName()+".";

    @Override
    public User findUser(Params<User> params) {

        User u = params.getParams();
        User user = genericDao.selectOne(statement+"findUser", Integer.parseInt(u.getUseraccount()));
        return user;
    }

    @Override
    public User findUser(Integer useraccount) {
        User user = genericDao.selectOne(statement+"findUser",useraccount);
        return user;
    }


    @Override
    public int update(User user) {
        int i =1;
        try {
          genericDao.updateOrDelete(statement+"updateUser", user);
        }catch (Exception e) {
          i = 0;
          e.printStackTrace();
        }
        return i;
    }

    public int createUser(User user){
        int i = 1;
        try{
             if(!StringUtils.isEmpty(user.getUsername())&&!StringUtils.isEmpty(user.getUseraccount())&&
                !StringUtils.isEmpty(user.getPassword())){
                genericDao.create(statement, user);
             }else {
                throw new IllegalArgumentException("必要参数不能为空");
             }
        }catch (Exception e){
            i = 0;
        }
        return i;
    }
}
