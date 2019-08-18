/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import com.connection.NewClass;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pojo.Student;

/**
 *
 * @author Sam
 */
public class controllerservlet extends HttpServlet {

    static NewClass dbcon;

    @Override
    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        //String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");

        String jdbcPassword = "";
        dbcon = new NewClass(jdbcURL, jdbcUsername, jdbcPassword);
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String opt = request.getParameter("op");
        if (opt.equals("addRegistration")) {
            int id = 0;

            String name = request.getParameter("name");

            String address = request.getParameter("address");
            String occupation = request.getParameter("occupation");
            String technology = request.getParameter("technology");
            String companyname = request.getParameter("companyname");
            String dob = request.getParameter("dob");
            String email = request.getParameter("email");
            String mob = request.getParameter("mob");
            String collagename = request.getParameter("collagename");
            String prn = request.getParameter("prn");
            String dpt = request.getParameter("dpt");

            pojo.Student s = new pojo.Student(id, name, address, occupation, technology, companyname, dob, email, mob, collagename, prn, dpt, "deactive");
            dbcon.addregistration(s);
            response.sendRedirect("StudentReg.jsp");

        } else if (opt.equals("addLogin")) {
            int id = 0;
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if (username != null && password != null) {
                if (username.equals("user") && password.equals("123")) {
                    response.sendRedirect("ShowReg.jsp");
                } else {
                    out.println(" Invalid name and password ");
                }

            }
        } else if (opt.equals("listregistration")) {
            List<Student> s = dbcon.getStudent();
            request.setAttribute("list", s);

        } else if (opt.equals("active")) {
            int id = 0;
            String id1 = request.getParameter("id");
            id=Integer.parseInt(id1);
            String status = request.getParameter("status");
            
            if(status.equals("active")){
                status="deactive";
            } else  if(status.equals("deactive")){
                status="active";
            }

            int rtn = dbcon.updateStudent(id, status);
            if (rtn > 0) {
                List<Student> s = dbcon.getStudent();
                request.setAttribute("list", s);
                request.setAttribute("msg", "Update Sucessfully");
                response.sendRedirect("ShowReg.jsp");

            }
        } else if (opt.equals("search")) {

            String searchTXT = request.getParameter("searchtxt");

            List<Student> s = dbcon.getStudentSerach(searchTXT);
            request.setAttribute("listsearch", s);

            request.getRequestDispatcher("search.jsp").forward(request, response);
            // response.sendRedirect("search.jsp");

        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
