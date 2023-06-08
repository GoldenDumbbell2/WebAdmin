/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.car;

import dao.carDAO;
import dao.familyDAO;
import dao.userDAO;
import java.util.List;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Car;
import model.Family;
import model.Users;
/**
 *
 * @author TADAR
 */
@WebServlet(name = "CarCreateController", urlPatterns = {"/CarCreateController"})
public class CarCreateController extends HttpServlet {


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
     private final carDAO cardao = new carDAO();
    private final familyDAO familydao = new familyDAO();
    private java.util.List<Family> listfamily = new ArrayList<>();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        listfamily = familydao.read();
        request.setAttribute("listfamily", listfamily);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/admin/Car/carCreate.jsp");
        rd.forward(request, response);
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
        String id = request.getParameter("id");
        String ten = request.getParameter("name");
        String plate = request.getParameter("plate");
        String color = request.getParameter("color");
        Family family = new Family();
        listfamily = familydao.read();
        for (Family u : listfamily) {
            if (request.getParameter("familyID").equals(u.getFamilyID())) {
                family = u;
            }
        }
        boolean validation = true;
        if(validation){
        Car cn = new Car(id, plate, plate, color, true, false, family);
        cardao.create(cn);
        List<Car> list = cardao.read();
        request.setAttribute("list", list);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/admin/Car/carview.jsp");
        rd.forward(request, response);
            
            }else{
                        request.getRequestDispatcher("/view/admin/User/userCreate.jsp").forward(request, response);

        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
 

}
