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
//    private int horario;
    private Funcionario funcionario;
    private double valorRecebido;
//    private Cliente cliente;
//    private int chaveFuncionario;
//    private int chaveValorRecebido;
//    private int chaveCliente;
    private int idProduto;
    private Produto produto;
    
//    public Venda(int id,double precoTotal, String dataVenda, int horario, Funcionario funcionario, ValorRecebido valorRecebido,Cliente cliente ) {
//        this.idVenda = id;
//        this.precoTotal = precoTotal;
//        this.dataVenda = dataVenda;
//        this.horario = horario;
//        this.funcionario = funcionario;
//        this.cliente = cliente;
//        this.valorRecebido = valorRecebido;
//        
//    }
    
    public Venda(int id, String dataVenda, double precoTotal, Produto produto) {
        this.idVenda = id;
        this.precoTotal = precoTotal;
        this.dataVenda = dataVenda;
        this.produto = produto;
        }

    
    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }
    
    public static Venda obterVenda(int id) throws ClassNotFoundException, SQLException{
        return VendaDAO.obterVenda(id);
    };
    
    
    public static List<Venda> obterVendas() throws ClassNotFoundException, SQLException{
        return VendaDAO.obterVendas();
    };

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
        this.precoTotal = precoTotal;
    }

    public String getDataVenda() {
        return dataVenda;
    }

    public void setDataVenda(String dataVenda) {
        this.dataVenda = dataVenda;
    }

//    public int getHorario() {
//        return horario;
//    }
//
//    public void setHorario(int horario) {
//        this.horario = horario;
//    }

    public Funcionario getFuncionario() {
        return funcionario;
    }

    public void setFuncionario(Funcionario funcionario) {
        this.funcionario = funcionario;
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
//
//    public int getChaveFuncionario() {
//        return chaveFuncionario;
//    }
//
//    public void setChaveFuncionario(int chaveFuncionario) {
//        this.chaveFuncionario = chaveFuncionario;
//    }
//
//    public int getChaveValorRecebido() {
//        return chaveValorRecebido;
//    }
//
//    public void setChaveValorRecebido(int chaveValorRecebido) {
//        this.chaveValorRecebido = chaveValorRecebido;
//    }
//
//    public int getChaveCliente() {
//        return chaveCliente;
//    }
//
//    public void setChaveCliente(int chaveCliente) {
//        this.chaveCliente = chaveCliente;
//    }
    
    public void gravar() throws SQLException, ClassNotFoundException{
        VendaDAO.gravar(this);
    }
    
    public void excluir() throws SQLException, ClassNotFoundException{
        VendaDAO.excluir(this);
    }

    public Produto getProduto() throws ClassNotFoundException, SQLException {
         if ((this.idProduto != 0) && (this.produto == null)) {
            this.produto = Produto.obterProduto(this.idProduto);
        }
        return this.produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }
    
    public void alterar() throws SQLException, ClassNotFoundException {
        VendaDAO.alterar(this);
    }
}