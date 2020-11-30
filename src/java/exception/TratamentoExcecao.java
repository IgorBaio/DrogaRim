package exception;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "TratamentoExcecao", urlPatterns = {"/TratamentoExcecao"})
public class TratamentoExcecao extends HttpServlet {

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
        Exception excecao = (Exception) request.getAttribute
            ("javax.servlet.error.exception");
        Integer codigoStatus = (Integer) request.getAttribute
                ("javax.servlet.error.status_code");
        String nomeServlet = (String) request.getAttribute
                ("javax.servlet.error.servlet_name");
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String titulo = "Informação Exceção";
            String tipoDocto = "<!doctype html public \"-//w3c//dtd html 4.0 transitional//en\">\n";
        out.println(tipoDocto + "<html>\n <head><title>" + titulo + 
                "</title></head><body style='text-align:center;'>\n");
            out.println("<div style='display:flex;justify-content:center; '><h2 style='display:inline; padding:20px; margin-top:10px; background:linear-gradient(to right, red , blue);color:white;'>Informação sobre a exceção</h2></div></br></br></br>");
            out.println("Código do status:" + codigoStatus + "</br></br>" );
            out.println("Nome do servlet: " + nomeServlet + "</br></br>");
            out.println("Tipo de exceção: " + excecao.getClass().getName()+ "</br></br>");            
            out.println("Mensagem: " + excecao.getMessage());
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
