package by.bsuir.kp.work_center.filtering;

public class OfferFiltering {

    private CompanyFiltering company;

    private Double salaryFrom;

    private Double salaryTo;


    public OfferFiltering(CompanyFiltering company, Double salaryFrom, Double salaryTo) {
        this.company = company;
        this.salaryFrom = salaryFrom;
        this.salaryTo = salaryTo;
    }

    public OfferFiltering() {
    }

    public CompanyFiltering getCompany() {
        return company;
    }

    public void setCompany(CompanyFiltering company) {
        this.company = company;
    }

    public Double getSalaryFrom() {
        return salaryFrom;
    }

    public void setSalaryFrom(Double salaryFrom) {
        this.salaryFrom = salaryFrom;
    }

    public Double getSalaryTo() {
        return salaryTo;
    }

    public void setSalaryTo(Double salaryTo) {
        this.salaryTo = salaryTo;
    }
}


