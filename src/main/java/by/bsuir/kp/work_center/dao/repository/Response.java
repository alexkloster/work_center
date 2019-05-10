package by.bsuir.kp.work_center.dao.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Response extends JpaRepository<Long, by.bsuir.kp.work_center.dao.entity.Response> {
}
