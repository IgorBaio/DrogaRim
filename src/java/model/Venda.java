package model;

import dao.VendaDAO;
import dao.ProdutoVendidoDAO;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Venda implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idVenda;
    private double precoTotal;
    private String dataVenda;
    @ManyToOne
    private Funcionario funcionario;
    private double valorRecebido;
    @ManyToOne
    private Cliente cliente;

    public Venda() {
    }

    public Venda(Integer id, String dataVenda, double precoTotal) {
        this.idVenda = id;
        this.precoTotal = precoTotal;
        this.dataVenda = dataVenda;
    }

    public Venda(Integer id, String dataVenda) {
        this.idVenda = id;
        this.dataVenda = dataVenda;
    }

    public Venda(Integer id, String dataVenda, double precoTotal, Cliente cliente, Funcionario funcionario) {
        this.idVenda = id;
        this.precoTotal = precoTotal;
        this.dataVenda = dataVenda;
        this.cliente = cliente;
        this.funcionario = funcionario;

    }
    public Venda( String dataVenda, double precoTotal, Cliente cliente, Funcionario funcionario) {
        
        this.precoTotal = precoTotal;
        this.dataVenda = dataVenda;
        this.cliente = cliente;
        this.funcionario = funcionario;

    }

    public Venda(Integer id, String dataVenda, Cliente cliente, Funcionario funcionario) {
        this.idVenda = id;
        this.dataVenda = dataVenda;
        this.cliente = cliente;
        this.funcionario = funcionario;

    }
    public Venda( String dataVenda, Cliente cliente, Funcionario funcionario) {
     
        this.dataVenda = dataVenda;
        this.cliente = cliente;
        this.funcionario = funcionario;

    }

    public void setFuncionario(Funcionario funcionario) {
        this.funcionario = funcionario;
    }

    public Funcionario getFuncionario() {
        return this.funcionario;
    }

    public Cliente getCliente() {
        return this.cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public static Venda obterVenda(Integer id) throws ClassNotFoundException, SQLException {
        return VendaDAO.obterVenda(id);
    }

    public static List<Venda> obterVendas() throws ClassNotFoundException, SQLException {
        return VendaDAO.obterVendas();
    }

    public double getPrecoTotal() throws ClassNotFoundException, SQLException {
        double precoCalculado = 0;
        for (ProdutoVendido p : ProdutoVendidoDAO.obterProdutosVendidos(this.idVenda)) {
            precoCalculado += p.getPreco();
        }
        
        return this.precoTotal;

    }

    public Integer getIdVenda() {
        return idVenda;
    }

    public void setIdVenda(Integer id) {
        this.idVenda = id;
    }

    public void setPrecoTotal(double precoTotal) {
        this.precoTotal += precoTotal;
    }
    
    public void setPrecoTotalExclusion(double precoTotal) {
        System.out.print(this.precoTotal);
        this.precoTotal -= precoTotal;
        System.out.print(precoTotal);
        System.out.print(this.precoTotal);
    }
    
    public void setPrecoTotalUpdate(double precoTotal) {
        this.precoTotal = precoTotal;
    }

    public String getDataVenda() {
        return dataVenda;
    }

    public void setDataVenda(String dataVenda) {
        this.dataVenda = dataVenda;
    }

    public double getValorRecebido() {
        return valorRecebido;
    }

    public void setValorRecebido(double valorRecebido) {
        this.valorRecebido = valorRecebido;
    }

    public void gravar() throws SQLException, ClassNotFoundException {
        VendaDAO.gravar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException {
        VendaDAO.excluir(this);
    }

    public void alterar() throws SQLException, ClassNotFoundException {
        VendaDAO.gravar(this);
    }
}
