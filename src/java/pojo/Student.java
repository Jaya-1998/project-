/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;

/**
 *
 * @author Sam
 */
public class Student {

    private int id;
    private String name;
    private String address;
    private String occupation;
    private String technology;
    private String companyname;
    private String dob;
    private String email;
    private String mob;
    private String collagename;
    private String prn;
    private String dpt;
    private String status;

    public Student(int id, String name, String address, String occupation, String technology, String companyname, String dob, String email, String mob, String collagename, String prn, String dpt, String status) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.occupation = occupation;
        this.technology = technology;
        this.companyname = companyname;
        this.dob = dob;
        this.email = email;
        this.mob = mob;
        this.collagename = collagename;
        this.prn = prn;
        this.dpt = dpt;
        this.status = status;
    }

    public Student() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public String getTechnology() {
        return technology;
    }

    public void setTechnology(String technology) {
        this.technology = technology;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMob() {
        return mob;
    }

    public void setMob(String mob) {
        this.mob = mob;
    }

    public String getCollagename() {
        return collagename;
    }

    public void setCollagename(String collagename) {
        this.collagename = collagename;
    }

    public String getPrn() {
        return prn;
    }

    public void setPrn(String prn) {
        this.prn = prn;
    }

    public String getDpt() {
        return dpt;
    }

    public void setDpt(String dpt) {
        this.dpt = dpt;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Student{" + "id=" + id + ", name=" + name + ", address=" + address + ", occupation=" + occupation + ", technology=" + technology + ", companyname=" + companyname + ", dob=" + dob + ", email=" + email + ", mob=" + mob + ", collagename=" + collagename + ", prn=" + prn + ", dpt=" + dpt + ", status=" + status + '}';
    }
    
    
}
