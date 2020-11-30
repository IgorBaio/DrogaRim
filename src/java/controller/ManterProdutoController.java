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
import model.Fabricante;
import model.Produto;
import model.Categoria;

public class ManterProdutoController extends HttpServlet {

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
            request.setAttribute("categorias", Categoria.obterCategorias());
            request.setAttribute("fabricantes", Fabricante.obterFabricantes());
            if (!operacao.equals("Incluir")) {
                int idProduto = Integer.parseInt(request.getParameter("idProduto"));
                Produto produto = Produto.obterProduto(idProduto);
                request.setAttribute("produto", produto);
            }
            RequestDispatcher view = request.getRequestDispatcher("cadastrarProduto.jsp");
            view.forward(request, response);
        } catch (ServletException e) {
            throw e;
        } catch (IOException e) {
            throw new ServletException(e);
        }
    }

    public void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, ClassNotFoundException {
        String operacao = request.getParameter("operacao");
        int idProduto = Integer.parseInt(request.getParameter("txtIdProduto"));
        String nome = request.getParameter("txtNomeComercial");
        String nomeFarmaco = request.getParameter("txtNomeFarmaco");
        double preco = Double.parseDouble(request.getParameter("txtPrecoProduto"));
        String tipo = request.getParameter("txtTipo");
        boolean receita = Boolean.parseBoolean(request.getParameter("txtReceita"));
        boolean medicamento = Boolean.parseBoolean(request.getParameter("txtMedicamento"));
        String lote = request.getParameter("txtLote");
        int quantidade = Integer.parseInt(request.getParameter("txtQuantidade"));
        int idFabricante = Integer.parseInt(request.getParameter("txtIdFabricante"));
        int idCategoria = Integer.parseInt(request.getParameter("txtIdCategoria"));

        try {
            Fabricante fabricante = null;
            if (idFabricante != 0) {
                fabricante = Fabricante.obterFabricante(idFabricante);
            }

            Categoria categoria = null;
            if (idCategoria != 0) {
                categoria = Categoria.obterCategoria(idCategoria);
            }
            Produto produto = new Produto(idProduto, nome, nomeFarmaco, preco, tipo, receita, medicamento, lote, quantidade, fabricante, categoria);
            if (operacao.equals("Incluir")) {
                produto.gravar();
            } else {
                if (operacao.equals("Alterar")) {
                    produto.alterar();
                } else {
                    if (operacao.equals("Excluir")) {
                        produto.excluir();
                    }
                }
            }
            RequestDispatcher view = request.getRequestDispatcher("PesquisaProdutoController");
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
        } catch (SQLException ex) {
            Logger.getLogger(ManterProdutoController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManterProdutoController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ManterProdutoController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManterProdutoController.class.getName()).log(Level.SEVERE, null, ex);
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
