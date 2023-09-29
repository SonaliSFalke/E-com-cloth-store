
package com.mycompany.e.com.servlets;

import com.mycompany.e.com.entities.User;
import com.mycompany.e.com.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class RegisterServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
             try{
            
                String userName = request.getParameter("user_name");
                String userEmail = request.getParameter("user_email");
                String userPassword = request.getParameter("user_password");
                String userPhone = request.getParameter("user_phone");
                String userPic = request.getParameter("user_pic");
                String userAddress = request.getParameter("user_address");
                String userType = request.getParameter("user_type");
                
                
                //validations 
               if(userName.isEmpty())
               {
                   out.println("Name is blank");
                   return;
               }
            
               //Creating user object to store data
               
//            User user = new User(userName, userEmail, userPassword, userPhone, "default.jpg", userAddress, "normal");
              User user = new User(userName, userEmail, userPassword, userPhone, "default", userAddress, "normal");
             Session hibernateSession =  FactoryProvider.getFactory().openSession();
             Transaction tx = hibernateSession.beginTransaction();

             int userId=(int)  hibernateSession.save(user);
                
                tx.commit();
               hibernateSession.close();
               
                HttpSession httpSession =  request.getSession();
                
                //Register msg and id code
                
                httpSession.setAttribute("message", "Registration Successfull !! User ID is " +userId);
                response.sendRedirect("register.jsp");
                return;
               
            }catch (Exception e){
                e.printStackTrace();
//                    out.print("error");
                
            }

//            out.println("hello bappa");
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
        return "Short description";
    }// </editor-fold>

}
