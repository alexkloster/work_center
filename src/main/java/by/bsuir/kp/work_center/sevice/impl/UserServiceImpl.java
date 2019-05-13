package by.bsuir.kp.work_center.sevice.impl;


import by.bsuir.kp.work_center.dao.entity.User;
import by.bsuir.kp.work_center.dao.repository.UserRepository;
import by.bsuir.kp.work_center.sevice.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    private static final Logger LOGGER = Logger.getLogger(UserServiceImpl.class);

    private User currentUser = null;


    @Autowired
    private UserRepository userRepository;


    @Override
    public User registration(User userEntity) {

        if (userEntity.getId() == null) {
            if (userRepository.countByLogin(userEntity.getLogin()) > 0) {
                return null;
            }
        }

        userRepository.save(userEntity);
        return userEntity;
    }

    @Override
    public void update(User user) {

        userRepository.save(user);
    }

    @Override
    public User authorisation(String login, String password) {
        System.out.println(login);
        System.out.println(password);
        User userEntity = userRepository.findByLoginAndPassword(login, password).orElse(new User(login, password));
        System.out.println(userEntity.getId());
        if (userEntity.getId() != null) {
            currentUser = userEntity;
        }
        return userEntity;
    }

    @Override
    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }

    @Override
    public List<User> getAllUsers() {
        return new ArrayList<>(userRepository.findAll());
    }

    @Override
    public User findById(Long id) {
        return userRepository.findById(id).orElse(null);
    }

    @Override
    public User getCurrentUser() {
        return currentUser;
    }

    @Override
    public void setCurrentUser(User entity) {
        this.currentUser = entity;
    }
}
