package org.example.model;

public class User {

    private int id;
    private String uid;
    private String firstname;
    private String lastname;
    private String address;
    private String phone;
    private String email;


    public User(int id,String uid, String firstname,String lastname, String address ,String phone ,String email) {
        this.id = id;
        this.uid = uid;
        this.firstname = firstname;
        this.lastname = lastname;
        this.address = address;
        this.phone = phone;
        this.email = email;

    }

    public User(String uid, String firstname, String lastname, String address ,String phone , String email) {
        this.uid = uid;
        this.firstname = firstname;
        this.lastname = lastname;
        this.address = address;
        this.phone = phone;
        this.email = email;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


}
