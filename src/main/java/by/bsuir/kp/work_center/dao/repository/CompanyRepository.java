package by.bsuir.kp.work_center.dao.repository;

import by.bsuir.kp.work_center.dao.entity.Company;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface CompanyRepository extends JpaRepository<Long, Company> {
}
