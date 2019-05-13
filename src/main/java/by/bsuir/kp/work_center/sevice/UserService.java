package by.bsuir.kp.work_center.sevice;


import by.bsuir.kp.work_center.dao.entity.User;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface UserService {

    User authorisation(String login, String password);

    User registration(User userEntity);

    void update(User user);

    void deleteUser(Long id);

    List<User> getAllUsers();

    User findById(Long id);

    User getCurrentUser();

    void setCurrentUser(User entity);
}
