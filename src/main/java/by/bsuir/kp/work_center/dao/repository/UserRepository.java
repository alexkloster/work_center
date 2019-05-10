package by.bsuir.kp.work_center.dao.repository;


import by.bsuir.kp.work_center.dao.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    Long countByLogin(String name);


    Optional<User> findByLoginAndPassword(String login, String password);

    @Override
    Optional<User> findById(Long aLong);

    //    void deleteById(Long id);

    List<User> findAll();

    @Query("select count(u) from User u where u.login =:login")
    Integer findOverlappedStudies(@Param("login") String login);



}
