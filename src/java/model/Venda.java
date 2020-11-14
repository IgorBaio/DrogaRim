/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.VendaDAO;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 *
 * @author Igori
 */
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
//    private Integer idCliente;
//    private Integer idFuncionario;

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

    public Venda(Integer id, String dataVenda, Cliente cliente, Funcionario funcionario) {
        this.idVenda = id;
        this.dataVenda = dataVenda;
        this.cliente = cliente;
        this.funcionario = funcionario;

    }

    public void setFuncionario(Funcionario funcionario) {
        this.funcionario = funcionario;
    }

    public Funcionario getFuncionario(){
        return this.funcionario;
    }
    
       public Cliente getCliente(){
        return this.cliente;
    }
//    public Integer getIdFuncionario() {
//        return idFuncionario;
//    }
//
//    public void setIdFuncionario(Integer idFuncionario) {
//        this.idFuncionario = idFuncionario;
//    }
//
//    public Funcionario getFuncionario() throws ClassNotFoundException, SQLException {
//        if ((this.idFuncionario != 0) && (this.funcionario == null)) {
//            this.funcionario = Funcionario.obterFuncionario(this.idFuncionario);
//        }
//        return this.funcionario;
//    }
//
//    public Cliente getCliente() throws ClassNotFoundException, SQLException {
//        if ((this.idCliente != 0) && (this.cliente == null)) {
//            this.cliente = Cliente.obterCliente(this.idCliente);
//        }
//        return this.cliente;
//    }

//    public void setCliente(Cliente cliente) {
//        this.cliente = cliente;
//    }
//
//    public Integer getIdCliente() {
//        return idCliente;
//    }
//
//    public void setIdCliente(Integer idCliente) {
//        this.idCliente = idCliente;
//    }

//    public Integer getIdProdutoVendido() {
//        return idProdutoVendido;
//    }
//
//    public void setIdProdutoVendido(Integer idProdutoVendido) {
//        this.idProdutoVendido = idProdutoVendido;
//    }
//
//    public ProdutoVendido getProdutoVendido() {
//        return produtoVendido;
//    }
//
//    public void setIdProdutoVendido(ProdutoVendido produtoVendido) {
//        this.produtoVendido = produtoVendido;
//    }

    public static Venda obterVenda(Integer id) throws ClassNotFoundException, SQLException {
        return VendaDAO.obterVenda(id);
    }

    public static List<Venda> obterVendas() throws ClassNotFoundException, SQLException {
        return VendaDAO.obterVendas();
    }

    public double getPrecoTotal() {
        return precoTotal;
    }

    public Integer getIdVenda() {
        return idVenda;
    }

    public void setIdVenda(Integer id) {
        this.idVenda = id;
    }

    public void setPrecoTotal(double precoTotal) {
        this.precoTotal = 0;
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

//    public Cliente getCliente() {
//        return cliente;
//    }
//
//    public void setCliente(Cliente cliente) {
//        this.cliente = cliente;
//    }
    public void gravar() throws SQLException, ClassNotFoundException {
        VendaDAO.gravar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException {
        VendaDAO.excluir(this);
    }

//    public void alterar() throws SQLException, ClassNotFoundException {
//        VendaDAO.alterar(this);
//    }
}
