package by.bsuir.kp.work_center.dao.entity;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "offer")
public class Offer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @ManyToOne
    @JoinColumn(name = "company_id")
    private Company company;


    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "response", joinColumns = { @JoinColumn(name = "id") }, inverseJoinColumns = { @JoinColumn(name = "user_id") })
    private Set<User> users = new HashSet<>();

    private Double salary;

    private String description;

    public Offer(String name, Company company, Double salary, String description) {
        this.name = name;
        this.company = company;
        this.salary = salary;
        this.description = description;
    }

    public Offer(String name, Company company, Set<User> users, Double salary, String description) {
        this.name = name;
        this.company = company;
        this.users = users;
        this.salary = salary;
        this.description = description;
    }

    public Offer() {
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }

    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
