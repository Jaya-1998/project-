/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import pojo.Login;
import pojo.Student;

public class NewClass {

    private String jdbcURL;
    private String jdbcUsername;
    private String jdbcPassword;
    private Connection jdbcConnection;

    public NewClass(String jdbcURL, String jdbcUsername, String jdbcPassword) {
        this.jdbcURL = jdbcURL;
        this.jdbcUsername = jdbcUsername;
        this.jdbcPassword = jdbcPassword;
    }

    protected void connect() throws SQLException {
        if (jdbcConnection == null || jdbcConnection.isClosed()) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                System.out.println("Connected");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            jdbcConnection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        }
    }

    protected void disconnect() throws SQLException {
        if (jdbcConnection != null && !jdbcConnection.isClosed()) {
            jdbcConnection.close();

        }
    }

    public static void main(String[] args) {
        NewClass db = new NewClass("jdbc:mysql://localhost/student", "root", "");
        try {
            db.connect();
        } catch (SQLException ex) {
            Logger.getLogger(NewClass.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void addregistration(Student registrationDtls) {
        try {
            connect();
            Statement stmt = jdbcConnection.createStatement();
            String str = "INSERT INTO registration(id,name,address,occupation,technology,companyname,dob,email,mob,collagename,prn,dpt,status) values('" + registrationDtls.getId() + "','" + registrationDtls.getName() + "','" + registrationDtls.getAddress() + "','" + registrationDtls.getOccupation() + "','" + registrationDtls.getTechnology() + "','" + registrationDtls.getCompanyname() + "','" + registrationDtls.getDob() + "','" + registrationDtls.getEmail() + "','" + registrationDtls.getMob() + "','" + registrationDtls.getCollagename() + "','" + registrationDtls.getPrn() + "','" + registrationDtls.getDpt() + "','" + registrationDtls.getStatus() + "')";
            stmt.executeUpdate(str);
            stmt.close();
            disconnect();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void addLogin(Login loginDtls) {
        try {
            connect();
            Statement stmt = jdbcConnection.createStatement();
            String str = "INSERT INTO login(id,username,password) values('" + loginDtls.getId() + "','" + loginDtls.getUsername() + "','" + loginDtls.getPassword() + "')";
            stmt.executeUpdate(str);
            stmt.close();
            disconnect();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public int updateStudent(int id, String status) {
        try {
            connect();
            Statement stmt = jdbcConnection.createStatement();
            String str = "Update registration set status='" + status + "' where id=" + id;
            int i = stmt.executeUpdate(str);
            stmt.close();
            disconnect();
            return i;
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }

    public List<Student> getStudent() {
        List<Student> s = new ArrayList<>();
        try {

            String str = "SELECT * FROM registration";
            connect();
            Statement stmt = jdbcConnection.createStatement();
            ResultSet rs = stmt.executeQuery(str);
            while (rs.next()) {
                Student stud = new Student(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13));
                s.add(stud);
            }
            stmt.close();
            disconnect();
        } catch (SQLException ex) {
            Logger.getLogger(NewClass.class.getName()).log(Level.SEVERE, null, ex);
        }

        return s;

    }
        public List<Student> getStudentSerach(String strSearch) {
        List<Student> s = new ArrayList<>();
        try {

            String str = "SELECT * FROM registration where (name like '%"+strSearch+"%' OR collagename  like '%"+strSearch+"%' OR  companyname like '%"+strSearch+"%') AND (status='active') ";
            connect();
            Statement stmt = jdbcConnection.createStatement();
            ResultSet rs = stmt.executeQuery(str);
            while (rs.next()) {
                Student stud = new Student(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13));
                s.add(stud);
            }
            stmt.close();
            disconnect();
        } catch (SQLException ex) {
            Logger.getLogger(NewClass.class.getName()).log(Level.SEVERE, null, ex);
        }

        return s;

    }

}
