package by.bsuir.kp.work_center.sevice;

import by.bsuir.kp.work_center.dao.entity.Company;

import java.util.List;

public interface CompanyService {

    List<Company> getAllCompanies();

    Company getById(Long id);

    void delete(Long id);

    Company save(Company company);

}
