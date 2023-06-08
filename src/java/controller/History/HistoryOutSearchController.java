/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.History;

import dao.historyDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.History;

/**
 *
 * @author TADAR
 */
@WebServlet(name = "HistoryOutSearchController", urlPatterns = {"/HistoryOutSearchController"})
public class HistoryOutSearchController extends HttpServlet {

     private final historyDAO dao = new historyDAO();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String search = request.getParameter("search");
        List<History> list = dao.searchPlate(search);
        request.setAttribute("listHistory", list);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/admin/history/historyOutSIdeCar.jsp");
        rd.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */


}
