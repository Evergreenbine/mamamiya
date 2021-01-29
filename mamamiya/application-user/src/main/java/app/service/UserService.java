package app.service;

import app.utils.Params;
import app.vo.User;

public interface UserService {

    User findUser(Params<User> params);

    User findUser(Integer uid);
}
