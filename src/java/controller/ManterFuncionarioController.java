package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Funcionario;

public class ManterFuncionarioController extends HttpServlet {

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
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        String acao = request.getParameter("acao");
        if (acao.equals("confirmarOperacao")) {
            confirmarOperacao(request, response);
        } else {
            if (acao.equals("prepararOperacao")) {
                prepararOperacao(request, response);
            }
        }
    }

    public void prepararOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException, ClassNotFoundException, SQLException {
        try {
            String operacao = request.getParameter("operacao");
            request.setAttribute("operacao", operacao);
            if (!operacao.equals("Incluir")) {
                int idFuncionario = Integer.parseInt(request.getParameter("idFuncionario"));
                Funcionario funcionario = Funcionario.obterFuncionario(idFuncionario);
                request.setAttribute("funcionario", funcionario);
            }
            RequestDispatcher view = request.getRequestDispatcher("cadastrarFuncionario.jsp");
            view.forward(request, response);
        } catch (ServletException e) {
            throw e;
        } catch (IOException e) {
            throw new ServletException(e);
        }
    }

    public void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException {
        String operacao = request.getParameter("operacao");
        int idFuncionario = Integer.parseInt(request.getParameter("txtCodFuncionario"));
        String funcao = request.getParameter("txtFuncaoFuncionario");
        String login = request.getParameter("txtLoginFuncionario");
        String senha = request.getParameter("txtSenhaFuncionario");

        try {
            Funcionario funcionario = new Funcionario(idFuncionario, funcao, login, senha);
            if (operacao.equals("Incluir")) {
                funcionario.gravar();
            } 
            else {
                if (operacao.equals("Alterar")) {
                    funcionario.alterar();
                }
                else{
                    if(operacao.equals("Excluir")){
                    funcionario.excluir();
                    }
                }
            }
        
            RequestDispatcher view = request.getRequestDispatcher("PesquisaFuncionarioController");
            view.forward(request, response);
        } catch (IOException e) {
            throw new ServletException(e);
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
        } catch (SQLException ex) {
            Logger.getLogger(ManterFuncionarioController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManterFuncionarioController.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (SQLException ex) {
            Logger.getLogger(ManterFuncionarioController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManterFuncionarioController.class.getName()).log(Level.SEVERE, null, ex);
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
