/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.VendaDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Igori
 */
public class Venda {

    private int idVenda;
    private double precoTotal;
    private String dataVenda;
    private Funcionario funcionario;
    private double valorRecebido;
    private Cliente cliente;
    private int idCliente;
    private int idFuncionario;

    private int idProdutoVendido;
    private ProdutoVendido produtoVendido;

    public Venda(int id, String dataVenda, double precoTotal) {
        this.idVenda = id;
        this.precoTotal = precoTotal;
        this.dataVenda = dataVenda;

    }

    public Venda(int id, String dataVenda) {
        this.idVenda = id;

        this.dataVenda = dataVenda;

    }
    
     public Venda(int id, String dataVenda, double precoTotal, Cliente cliente, Funcionario funcionario ) {
        this.idVenda = id;
        this.precoTotal = precoTotal;
        this.dataVenda = dataVenda;
        this.cliente = cliente;
        this.funcionario = funcionario;

    }

      public Venda(int id, String dataVenda, Cliente cliente, Funcionario funcionario ) {
        this.idVenda = id;
        this.dataVenda = dataVenda;
        this.cliente = cliente;
        this.funcionario = funcionario;

    }
      
    public void setFuncionario(Funcionario funcionario) {
        this.funcionario = funcionario;
    }
      
    public int getIdFuncionario() {
        return idFuncionario;
    }

    public void setIdFuncionario(int idFuncionario) {
        this.idFuncionario = idFuncionario;
    }

    public Funcionario getFuncionario() throws ClassNotFoundException, SQLException {
        if ((this.idFuncionario != 0) && (this.funcionario == null)) {
            this.funcionario = Funcionario.obterFuncionario(this.idFuncionario);
        }
        return this.funcionario;
    }

    public Cliente getCliente() throws ClassNotFoundException, SQLException {
        if ((this.idCliente != 0) && (this.cliente == null)) {
            this.cliente = Cliente.obterCliente(this.idCliente);
        }
        return this.cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public int getIdProdutoVendido() {
        return idProdutoVendido;
    }

    public void setIdProdutoVendido(int idProdutoVendido) {
        this.idProdutoVendido = idProdutoVendido;
    }

    public static Venda obterVenda(int id) throws ClassNotFoundException, SQLException {
        return VendaDAO.obterVenda(id);
    }

    public static List<Venda> obterVendas() throws ClassNotFoundException, SQLException {
        return VendaDAO.obterVendas();
    }

    public double getPrecoTotal() {
        return precoTotal;
    }

    public int getIdVenda() {
        return idVenda;
    }

    public void setIdenda(int id) {
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

    public void alterar() throws SQLException, ClassNotFoundException {
        VendaDAO.alterar(this);
    }
}
