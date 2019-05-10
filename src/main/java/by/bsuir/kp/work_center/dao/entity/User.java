package by.bsuir.kp.work_center.dao.entity;


import by.bsuir.kp.work_center.enumerated.Role;

import javax.persistence.*;

@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String login;

    private String name;

    private String password;

    @Enumerated(EnumType.ORDINAL)
    private Role role;

    private Boolean submitted;

    private String phone;


    public User() {
    }

    public User(String login, String password) {
        this.login = login;
        this.password = password;
    }

    public User(String login, String name, String password, Role role, Boolean submitted, String phone) {
        this.login = login;
        this.name = name;
        this.password = password;
        this.role = role;
        this.submitted = submitted;
        this.phone = phone;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Boolean getSubmitted() {
        return submitted;
    }

    public void setSubmitted(Boolean submitted) {
        this.submitted = submitted;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
