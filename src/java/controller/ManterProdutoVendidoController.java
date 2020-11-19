/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.exit;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Fabricante;
import model.Produto;
import model.ProdutoVendido;
import model.Venda;

/**
 *
 * @author mathe
 */
public class ManterProdutoVendidoController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     * @throws java.lang.ClassNotFoundException
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
            request.setAttribute("vendas", Venda.obterVendas());
            request.setAttribute("produtos", Produto.obterProdutos());
            //request.setAttribute("produtosVendidos", ProdutoVendido.listarProdutosVendidos());
            //int idVenda = Integer.parseInt(request.getParameter("idVenda"));
            // /\ ACHO QUE ISSO DEVERIA EXISTIR, SENDO O IDVENDA REPASSADO DA ABA DE VENDA. MAS NÃO ME ADIANTOU EM ND POR ENQUANTO
            if (!operacao.equals("Incluir")) {
                int idProdutoVendido = Integer.parseInt(request.getParameter("idProdutoVendido"));
                ProdutoVendido produtoVendido = ProdutoVendido.obterProdutoVendido(idProdutoVendido);
                request.setAttribute("produtoVendido", produtoVendido);
            }
            RequestDispatcher view = request.getRequestDispatcher("cadastrarProdutoVendido.jsp");
            view.forward(request, response);
        } catch (ServletException e) {
            throw e;
        } catch (IOException e) {
            throw new ServletException(e);
        }
    }

    public void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, ClassNotFoundException {
        String operacao = request.getParameter("operacao");
        int idProdutoVendido = Integer.parseInt(request.getParameter("txtIdProdutoVendido"));
        Double preco = Double.parseDouble(request.getParameter("txtPreco"));
        int idProduto = Integer.parseInt(request.getParameter("txtIdProduto"));
        int idVenda = Integer.parseInt(request.getParameter("txtIdVenda"));

        try {
            Venda venda = null;
            if (idVenda != 0) {
                venda = Venda.obterVenda(idVenda);
            }

            Produto produto = null;
            if (idProduto != 0) {
                produto = Produto.obterProduto(idProduto);
            }

            ProdutoVendido produtoVendido = new ProdutoVendido(idProdutoVendido, preco, produto, venda);
            if(produtoVendido.getPreco() == 0){
                produtoVendido.setPreco(produtoVendido.getProduto().getPreco());
            }else{
                double novoPreco = produtoVendido.getProduto().getPreco() - produtoVendido.getPreco();
                produtoVendido.setPreco(novoPreco);
            }
            if (operacao.equals("Incluir")) {
                produtoVendido.gravar();
            } else {
//                if (operacao.equals("Alterar")) {
//                    produtoVendido.alterar();
//                } else {
                    if (operacao.equals("Excluir")) {
                        produtoVendido.excluir();
//                    }
                }
            }
            RequestDispatcher view = request.getRequestDispatcher("PesquisaProdutoVendidoController?idVenda="+idVenda);
            view.forward(request, response);
        } catch (IOException ex) {
            throw new ServletException(ex);
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

        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ManterProdutoVendidoController.class
                    .getName()).log(Level.SEVERE, null, ex);
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
        } catch (SQLException | ClassNotFoundException ex) {
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
