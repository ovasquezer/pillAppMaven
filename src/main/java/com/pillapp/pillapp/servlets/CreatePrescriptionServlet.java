/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pillapp.pillapp.servlets;

import static com.pillapp.pillapp.utils.Constants.DURATION_KEY;
import static com.pillapp.pillapp.utils.Constants.MEDICINE_KEY;
import static com.pillapp.pillapp.utils.Constants.LAPSE_KEY;
import static com.pillapp.pillapp.utils.Constants.QUANTITY_KEY;
import static com.pillapp.pillapp.utils.Constants.START_DATE_KEY;
import static com.pillapp.pillapp.utils.Constants.TREATMENT_KEY;
import static com.pillapp.pillapp.utils.Constants.USERNAME_KEY;
import com.pillapp.pillapp.utils.JCRUtils;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jcr.Node;
import javax.jcr.RepositoryException;
import javax.jcr.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jvasquez
 */
@WebServlet(name = "CreatePrescriptionServlet", urlPatterns = {"/CreatePrescriptionServlet"})
public class CreatePrescriptionServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws javax.jcr.RepositoryException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, RepositoryException {
        String contactPerson = request.getParameter(USERNAME_KEY);
        String treatment = request.getParameter(TREATMENT_KEY);
        
        String medicine = request.getParameter(START_DATE_KEY);
        String startDate = request.getParameter(MEDICINE_KEY);
        String duration = request.getParameter(DURATION_KEY);
        String quantity = request.getParameter(QUANTITY_KEY);
        String period = request.getParameter(LAPSE_KEY);
        
        
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
        try {
            processRequest(request, response);
        } catch (RepositoryException ex) {
            Logger.getLogger(CreatePrescriptionServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (RepositoryException ex) {
            Logger.getLogger(CreatePrescriptionServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
