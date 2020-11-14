/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.ProdutoDAO;
import dao.ProdutoVendidoDAO;
import dao.VendaDAO;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 *
 * @author Igori
 */

@Entity
public class ProdutoVendido implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idProdutoVendido;
    private double preco;
    private Integer idProduto;
    private Integer idVenda;
    public static double diferencaPreco;
    @ManyToOne
    private Produto produto;
    @ManyToOne
    private Venda venda;

    public ProdutoVendido() {
    }

    public ProdutoVendido(Integer idProdutoVendido, double preco, Produto produto, Venda venda) {
        this.idProdutoVendido = idProdutoVendido;
        this.preco = preco;
        this.produto = produto;
        this.venda = venda;
        diferencaPreco = preco;
    }

    public Produto getProduto() throws ClassNotFoundException, SQLException {
        if ((this.idProduto != 0) && (this.produto == null)) {
            this.produto = Produto.obterProduto(this.idProduto);
        }
        return this.produto;
    }

    public Venda getVenda() throws ClassNotFoundException, SQLException {
        if ((this.idVenda != 0) && (this.venda == null)) {
            this.venda = Venda.obterVenda(this.idVenda);
        }
        return this.venda;
    }

    public Integer getIdProdutoVendido() {
        return idProdutoVendido;
    }

    public void setIdProdutoVendido(Integer idProdutoVendido) {
        this.idProdutoVendido = idProdutoVendido;
    }
//////////////////////////////////////////////////////////////////////////////////

    public static ProdutoVendido obterProdutoVendido(int idProdutoVendido) throws ClassNotFoundException, SQLException {
        return ProdutoVendidoDAO.obterProdutoVendido(idProdutoVendido);// Aqui acho que deveira entrar o idVenda, mas não sei como repassar esse valor no parâmetro onde a função tá sendo chamada
    }

    /**
     * public static List<ProdutoVendido> obterProdutosVendidos() throws
     * ClassNotFoundException, SQLException { return
     * ProdutoVendidoDAO.obterProdutosVendidos();
    }*
     */
    public static List<ProdutoVendido> obterProdutosVendidos(int idVenda) throws ClassNotFoundException, SQLException {
        return ProdutoVendidoDAO.obterProdutosVendidos(idVenda);
    }

    public static Venda obterVenda(int id) throws ClassNotFoundException, SQLException {
        return VendaDAO.obterVenda(id);
    }

    public static List<Venda> obterVenda() throws ClassNotFoundException, SQLException {
        return VendaDAO.obterVendas();
    }

    public void setVenda(Venda venda) {
        this.venda = venda;
    }

    public Integer getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(Integer idProduto) {
        this.idProduto = idProduto;
    }

    public Integer getIdVenda() {
        return idVenda;
    }

    public void setIdVenda(Integer idVenda) {
        this.idVenda = idVenda;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public void gravar() throws SQLException, ClassNotFoundException {
        ProdutoVendidoDAO.gravar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException {
        ProdutoVendidoDAO.excluir(this);
    }

//    public void alterar() throws SQLException, ClassNotFoundException {
//       
//        ProdutoVendidoDAO.alterar(this);
//    }
    /**
     * public static ProdutoVendido listarProdutoVendido(int idVenda) throws
     * ClassNotFoundException, SQLException{ return
     * ProdutoVendidoDAO.listarProdutoVendido(idVenda); } public static
     * List<ProdutoVendido> listarProdutosVendidos() throws
     * ClassNotFoundException, SQLException { return
     * ProdutoVendidoDAO.listarProdutosVendidos(); }*
     */
}
