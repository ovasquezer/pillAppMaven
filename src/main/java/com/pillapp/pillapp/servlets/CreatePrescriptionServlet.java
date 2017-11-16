/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pillapp.pillapp.servlets;

import static com.pillapp.pillapp.utils.Constants.DESCRIPTION_KEY;
import static com.pillapp.pillapp.utils.Constants.ENDDATE_KEY;
import static com.pillapp.pillapp.utils.Constants.PILLAPP_KEY;
import static com.pillapp.pillapp.utils.Constants.ROL_KEY;
import static com.pillapp.pillapp.utils.Constants.STARTDAY_KEY;
import static com.pillapp.pillapp.utils.Constants.USERNAME_KEY;
import static com.pillapp.pillapp.utils.Constants.USERS_KEY;
import com.pillapp.pillapp.utils.JCRUtils;
import java.io.IOException;
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
        String username = request.getParameter(USERNAME_KEY);
        String description = request.getParameter(DESCRIPTION_KEY);
        String doctor = request.getParameter("doctor");
        String treatment = request.getParameter("treatment");
        String startDate = request.getParameter(STARTDAY_KEY);
        String endDate = request.getParameter(ENDDATE_KEY);
        String rol = request.getParameter(ROL_KEY);
        JCRUtils jcrUtils = new JCRUtils();
        Session session = jcrUtils.repoLogin();
        if(null != session){
            Node root = session.getRootNode();
            if(root.hasNode(PILLAPP_KEY)){
                Node app = root.getNode(PILLAPP_KEY);
                Node usersNode = app.getNode(USERS_KEY);
                Node rolNode = usersNode.getNode(rol);
                if(null != rolNode && rolNode.hasNode(username)){
                    Node userNode = rolNode.getNode(username);
                    Node prescriptionNode = jcrUtils.validateNode(userNode, "prescription");
                    Node doctorNode = jcrUtils.validateNode(prescriptionNode, doctor);
                    Node treatmentNode = jcrUtils.validateNode(doctorNode, treatment);
                    treatmentNode.setProperty(STARTDAY_KEY, startDate);
                    treatmentNode.setProperty(ENDDATE_KEY, endDate);
                    treatmentNode.setProperty(DESCRIPTION_KEY, description);
                    
                }
            }
            session.save();
            session.logout();
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
