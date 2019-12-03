/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cliente;
import model.Funcionario;
import model.Produto;
import model.Venda;

/**
 *
 * @author Igori
 */
public class ManterVendaController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.lang.ClassNotFoundException
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
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
            request.setAttribute("clientes", Cliente.obterClientes());
            request.setAttribute("funcionarios", Funcionario.obterFuncionarios());

            if (!operacao.equals("Incluir")) {
                int idVenda = Integer.parseInt(request.getParameter("idVenda"));
                Venda venda = Venda.obterVenda(idVenda);
                request.setAttribute("venda", venda);
            }
            RequestDispatcher view = request.getRequestDispatcher("cadastrarVenda.jsp");
            view.forward(request, response);
        } catch (ServletException e) {
            throw e;
        } catch (IOException e) {
            throw new ServletException(e);
        }
    }
    
    
    
    public void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException {
        String operacao = request.getParameter("operacao");
        int idVenda = Integer.parseInt(request.getParameter("txtIdVenda"));
        String dataVenda = request.getParameter("txtDataVenda");
        //double precoTotal = Double.parseDouble(request.getParameter("txtPrecoTotal"));
        int idCliente = Integer.parseInt(request.getParameter("txtIdCliente"));
        int idFuncionario = Integer.parseInt(request.getParameter("txtIdFuncionario"));

        try {
            Cliente cliente = null;
            if (idCliente != 0) {
                cliente = Cliente.obterCliente(idCliente);
            }
            Funcionario funcionario = null;
            if (idCliente != 0) {
                funcionario = Funcionario.obterFuncionario(idFuncionario);
            }
            //Venda venda = new Venda(idVenda, dataVenda, precoTotal);
            Venda venda = new Venda(idVenda, dataVenda, cliente, funcionario);

            if (operacao.equals("Incluir")) {
                venda.gravar();
            } else {
                if (operacao.equals("Alterar")) {
                    double precoTotal = Double.parseDouble(request.getParameter("txtPrecoTotal"));
                    venda = new Venda(idVenda, dataVenda, precoTotal, cliente, funcionario);
                    venda.alterar();
                } else {
                    if (operacao.equals("Excluir")) {
                        venda.excluir();
                    }
                }
            }

            RequestDispatcher view = request.getRequestDispatcher("PesquisaVendaController");
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
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ManterVendaController.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ManterVendaController.class.getName()).log(Level.SEVERE, null, ex);
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
