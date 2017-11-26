/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pillapp.pillapp.utils;

import static com.pillapp.pillapp.utils.Constants.DASH;
import static com.pillapp.pillapp.utils.Constants.EMPTY_SPACE;
import static com.pillapp.pillapp.utils.Constants.SESSION_KEY;
import java.net.MalformedURLException;
import java.util.Iterator;
import javax.jcr.Node;
import javax.jcr.Repository;
import javax.jcr.RepositoryException;
import javax.jcr.Session;
import javax.jcr.SimpleCredentials;
import org.apache.jackrabbit.rmi.repository.URLRemoteRepository;

/**
 *
 * @author jvasquez
 */
public class JCRUtils {
    
    
    public Session repoLogin(){
        try{
            /**
             * using the url lolahost:9090 where is up the jackrabbit repository
             */

            Repository repository =
                    new URLRemoteRepository("http://localhost:9090/rmi");
            /**
             * Enter to jackrabbit using the credentials admin:admin,password:admin
             */
            SimpleCredentials creds = new SimpleCredentials("admin","admin".toCharArray());
            Session jcrSession = repository.login(creds);
            
            return jcrSession;
        }catch(RepositoryException RE){
            System.out.println(RE);
            return null;
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return null;
        }
    }
   
    /**
     * This method is used to exit the session that is used in the program.
     *
     * @param jcrSession receive the session that is going to be closed.
     */
    public void repoLogout(Session jcrSession){
        if(jcrSession != null){
            jcrSession.logout();
        } else {
            System.out.println("Session can't be closed");
        }
    }
    
    public Node getParentUser(Node root, String nodeName) 
            throws RepositoryException{
        Node result = null;
        if(root.hasNode(nodeName)){
            result = root.getNode(nodeName);
        }
        return result; 
    }
    
    public Node validateNode(Node rootNode, String nodeName) throws RepositoryException{
        Node result;
        if(rootNode.hasNode(nodeName)){
            result = rootNode.getNode(nodeName);
        } else {
            result = rootNode.addNode(nodeName);
        }
        return result;
    }
    
    public Node getLoginUser(Node parentNode, Node parentNode2, 
            Node parentNode3, String nodeName) throws RepositoryException{
        Node result = null;
        if(parentNode.hasNode(nodeName)){
            result = parentNode.getNode(nodeName);
        } else if(parentNode2.hasNode(nodeName)){
            result = parentNode2.getNode(nodeName);
        } else if(parentNode3.hasNode(nodeName)){
            result = parentNode3.getNode(nodeName);
        }
        return result;
    }
    
    public Node getLoginUser(Node parentNode, String nodeName) throws RepositoryException{
        Node result = null;
        if(parentNode.hasNode(nodeName)){
            result = parentNode.getNode(nodeName);
        } 
        return result;
    }
    
    public Node createUserSession(String username, String ip, Session jcrSession) throws RepositoryException{
        Node rootNode = jcrSession.getRootNode();
        Node sessionNode = null;
        if(rootNode.hasNode(SESSION_KEY)){
            sessionNode = rootNode.getNode(SESSION_KEY);
        } else {
            sessionNode = rootNode.addNode(SESSION_KEY);
        }
        Node userSession = null;
        if(sessionNode.hasNode(username + DASH + ip)){
            userSession = sessionNode.getNode(username + DASH + ip);
        } else {
            userSession = sessionNode.addNode(username + DASH + ip);
        }
        jcrSession.save();
        return userSession;
    }

}
