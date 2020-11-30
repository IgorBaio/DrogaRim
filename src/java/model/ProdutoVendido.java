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

@Entity
public class ProdutoVendido implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idProdutoVendido;
    private double preco;
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

        return this.produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public Venda getVenda() throws ClassNotFoundException, SQLException {

        return this.venda;
    }

    public void setVenda(Venda venda) {
        this.venda = venda;
    }

    public Integer getIdProdutoVendido() {
        return idProdutoVendido;
    }

    public void setIdProdutoVendido(Integer idProdutoVendido) {
        this.idProdutoVendido = idProdutoVendido;
    }

    public static ProdutoVendido obterProdutoVendido(int idProdutoVendido) throws ClassNotFoundException, SQLException {
        return ProdutoVendidoDAO.obterProdutoVendido(idProdutoVendido);
    }

    public static List<ProdutoVendido> obterProdutosVendidos(Integer idVenda) throws ClassNotFoundException, SQLException {
        return ProdutoVendidoDAO.obterProdutosVendidos(idVenda);
    }

    public static Venda obterVenda(int id) throws ClassNotFoundException, SQLException {
        return VendaDAO.obterVenda(id);
    }

    public static List<Venda> obterVenda() throws ClassNotFoundException, SQLException {
        return VendaDAO.obterVendas();
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

    public void alterar() throws SQLException, ClassNotFoundException {
       
        ProdutoVendidoDAO.gravar(this);
    }
    
}
