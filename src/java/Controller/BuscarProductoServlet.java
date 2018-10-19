package Controller;

import Model.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marce
 */
@WebServlet(name = "BuscarProductoServlet", urlPatterns = {"/buscarProducto.do"})
public class BuscarProductoServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");

        String id = request.getParameter("idProducto");

        List<Producto> lista = (List<Producto>) request.getSession().getAttribute("lista");

        Producto p = null;
        for (Producto pro : lista) {
            if (pro.getId() == Integer.parseInt(id)) {
                p = new Producto(pro.getId(), pro.getNombre(), pro.getPrecio(), pro.getStock());
                pro.setStock((pro.getStock()-1));
                request.getSession().setAttribute("listaActualizada", lista);
            }

        }
        
        if(p==null){
            response.sendRedirect("error.jsp");
        }else {
            response.sendRedirect("exito.jsp");
        }
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
