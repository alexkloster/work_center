package by.bsuir.kp.work_center.sevice.impl;

import by.bsuir.kp.work_center.dao.entity.Company;
import by.bsuir.kp.work_center.dao.repository.CompanyRepository;
import by.bsuir.kp.work_center.sevice.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CompanyServiceImpl implements CompanyService {

    @Autowired
    private CompanyRepository companyRepository;

    @Override
    public List<Company> getAllCompanies() {
        return companyRepository.findAll();
    }

    @Override
    public Company getById(Long id) {
        return companyRepository.findById(id).orElse(null);
    }

    @Override
    public void delete(Long id) {
        companyRepository.deleteById(id);
    }

    @Override
    public Company save(Company company) {
        return companyRepository.save(company);
    }
}
