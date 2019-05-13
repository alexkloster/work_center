package by.bsuir.kp.work_center.filtering;

public class CompanyFiltering {

    private Long companyId;

    private Long cityId;

    public CompanyFiltering(Long companyId, Long cityId) {
        this.companyId = companyId;
        this.cityId = cityId;
    }

    public CompanyFiltering() {
    }

    public Long getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Long companyId) {
        this.companyId = companyId;
    }

    public Long getCityId() {
        return cityId;
    }

    public void setCityId(Long cityId) {
        this.cityId = cityId;
    }
}
