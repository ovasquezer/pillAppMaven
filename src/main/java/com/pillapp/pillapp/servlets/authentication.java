/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pillapp.pillapp.servlets;

import static com.pillapp.pillapp.utils.Constants.DOCTOR;
import static com.pillapp.pillapp.utils.Constants.PASSWORD_KEY;
import static com.pillapp.pillapp.utils.Constants.PATIENT;
import static com.pillapp.pillapp.utils.Constants.PHARMACY;
import static com.pillapp.pillapp.utils.Constants.PILLAPP_HOST;
import static com.pillapp.pillapp.utils.Constants.SLASH;
import static com.pillapp.pillapp.utils.Constants.TREATMENT_KEY;
import static com.pillapp.pillapp.utils.Constants.USERNAME_KEY;
import com.pillapp.pillapp.utils.JCRUtils;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jcr.Node;
import javax.jcr.RepositoryException;
import javax.jcr.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jvasquez
 */
@WebServlet(name = "authentication", urlPatterns = {"/authentication"})
public class authentication extends HttpServlet {

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
        String user = "";
        JCRUtils jcrUtils = new JCRUtils();
        Session session = jcrUtils.repoLogin();
        String password = request.getParameter(PASSWORD_KEY);
        String username = request.getParameter(USERNAME_KEY);
        String ip = request.getRemoteAddr();
        Node root = session.getRootNode();
        Node pillAppNode = root.getNode("pillApp");
        Node parentUsers = pillAppNode.getNode("users");
        Node doctor = jcrUtils.getParentUser(parentUsers, DOCTOR);
        Node patient = jcrUtils.getParentUser(parentUsers, PATIENT);
        Node pharmacy = jcrUtils.getParentUser(parentUsers, PHARMACY);
        Node loginUser = jcrUtils.getLoginUser(doctor,patient,pharmacy,username);
        if(null != loginUser){
            if(loginUser.hasProperty(PASSWORD_KEY)){
                if(loginUser.getProperty(PASSWORD_KEY).getString().equals(password)){
                    Node userSessionNdeo = jcrUtils.createUserSession(username, ip, session);
                    Cookie sessionCookie = new Cookie(USERNAME_KEY, username);
                    sessionCookie.setMaxAge(-1);
                    response.addCookie(sessionCookie);
                    response.sendRedirect(PILLAPP_HOST + SLASH + "new-prescription.jsp");
                }
            }
        } else {
            response.sendRedirect(PILLAPP_HOST + SLASH + "?error=1");
        }
        jcrUtils.repoLogout(session);
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
            Logger.getLogger(authentication.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(authentication.class.getName()).log(Level.SEVERE, null, ex);
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
