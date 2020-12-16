package com.demo.web;

import com.demo.model.DB;
import com.demo.model.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author begonaolea
 */
@WebServlet(name = "VerDetalleProductoServlet", urlPatterns = {"/ver-detalle"})
public class VerDetalleProductoServlet extends HttpServlet {

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

        System.out.println("..... esto en procesar petiocn detalle");
        /*
        
        1. lee parametro id
        2. ir a bd  obtner producot por id 
        3. genera el html de salida con datos del producto
        4. si no existe di que no existe 
         */

        int id = 0;
        Producto producto = null;

        //leo parametro
        String sId = request.getParameter("id");
        //validar
        String msgError = null;
        if (sId == null || sId.length() == 0) {
            msgError = "Debe indicar el id de producto a mostrar.";
        } else {
            //convertir en un int
            try {
                id = Integer.parseInt(sId);
            } catch (NumberFormatException e) {
                msgError = "El formato del id es incorrecto. Debe ser un entero.";
            }
        }//fin validad

        //buscar el Producto por id
        if (msgError == null) {
            //devuelve el producto un null si no existe
            producto = DB.getProducto(id);
            //mesaje si no existe
            if (producto == null) {
                msgError = "El producto con ID " + id + " no exixte.";
            }
        }//fin buscar

        //generar el html de salida
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Detalle Producto </title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Detalle Producto </h1>");
            if (msgError != null) {
                //no existe
                out.println("<h2 style='color:red:'>" + msgError + "</h2>");
            } else {
                //existe ver detalle
                out.println("Producto: " + producto.getNombre() + "<br /> ");
                out.println("Descripción: " + producto.getDescripcion() + "<br /> ");
                out.println("Precio: " + producto.getPrecio() + "€<br /> ");
            }

            out.println("</body>");
            out.println("</html>");
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
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
