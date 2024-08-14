package jp.co.axiz.sss.entity;

import org.hibernate.validator.constraints.UUID;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@EntityScan
public class User {

    @UUID
    private Integer id;
    private String username;
    private String password;
    private String role; // Add role field

    // Getters and setters for all fields

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}