package by.bsuir.kp.work_center.dao.repository;

import by.bsuir.kp.work_center.dao.entity.Response;
import by.bsuir.kp.work_center.dao.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ResponseRepository extends JpaRepository<Response, Long> {

    List<Response> findAllByUser(User user);
}
