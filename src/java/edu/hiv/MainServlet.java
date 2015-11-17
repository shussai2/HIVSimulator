/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.hiv;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.*;
import java.io.*;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author Sajjad
 */
public class MainServlet extends HttpServlet
{
    
    private ArrayList<String> selectedTests;

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
            throws ServletException, IOException 
    {
        
        response.setContentType("text/html;charset=UTF-8");
        
        //when "I Accept" button is clicked, the user is
        //navigated to a personal information jsp
        if (request.getParameter("I Accept") != null)
        {
           System.out.println("\n\n\nIN MainServlet: I Accept button clicked"); 
           String url = "/userinfo.jsp";
           RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
           dispatcher.forward(request, response);
           return;  
        }
        
        //when "user info" button is clicked, the user is
        //navigated to a test page
        if (request.getParameter("submit info") != null)
        {
           System.out.println("\n\n\nIN MainServlet: User Info button clicked");
           
           
            // create the User object 
            User user = new User("Test User", 
                            request.getParameter("years"),
                            request.getParameter("months"),
                            request.getParameter("gender"),
                            request.getParameter("race")
                            ); 
            
           
           System.out.println("\n\n\nUser Info: " + user.getUserInfoString());
           String url = "/testtype.jsp";
           RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
           dispatcher.forward(request, response);
           return;  
        }
        
        //when "Simulate Test" button is clicked, the user is
        //navigated to a test page that will simulate the particular
        //test
        if (request.getParameter("Simulate Test") != null)
        {
           System.out.println("\n\n\nIN MainServlet: Simulate Test button clicked");
           
            //convert string Array received from tracks.jsp
            //into ArrayList so items can be easily removed
            //and added
            selectedTests = new ArrayList<String>(Arrays.asList(request.getParameterValues("tests[]"))); 
           
           
           if (selectedTests.contains("HIV Immunoassay"))
           {
               System.out.println("\n\n\nIN MainServlet: HIV Immunoassay");
               String url = "/hivimmunoassay.jsp";
               RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
               dispatcher.forward(request, response);
           }
           return;  
        }      

        //when "combosubmit" button is clicked, the user is
        //navigated to further steps of HIV Immunoassay test
        if (request.getParameter("combosubmit") != null)
        {
           System.out.println("\n\n\nIN MainServlet: combosubmit button clicked");
           
           String comboposneg = (String) request.getParameter("combo");
           
           System.out.println("\nIN MainServlet: combo comboposneg: " + comboposneg);
           
           if (comboposneg.equalsIgnoreCase("combo+"))
           {
            String url = "/hivsteptwo.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
            return;
           }
           
           if (comboposneg.equalsIgnoreCase("combo-"))
           {
            String url = "/hivnegative.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
            return;
           }
           
        } 

        //when "differentiationSubmit" button is clicked, the user is
        //navigated to results of HIV Immunoassay test
        if (request.getParameter("differentiationSubmit") != null)
        {
           System.out.println("\n\n\nIN MainServlet: differentiationSubmit button clicked");

           String url = "/hivtworesult.jsp";
           RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
           dispatcher.forward(request, response);
           return;
           
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

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Main Servlet";
    }// </editor-fold>

}
