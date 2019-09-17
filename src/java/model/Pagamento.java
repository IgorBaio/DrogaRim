/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.PagamentoDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Igori
 */
public class Pagamento {
    private int id;
    private String tipo;
    private double valorRecebido;
    private double troco;
    private double preco;

    public Pagamento(int id,String tipo, double valorRecebido, double troco, double preco) {
        this.id = id;
        this.tipo = tipo;
        this.valorRecebido = valorRecebido;
        this.troco = troco;
        this.preco = preco;
    }

    public static Pagamento obterPagamento(int id) throws ClassNotFoundException, SQLException{
        return PagamentoDAO.obterPagamento(id);
    };
    
    
    public static List<Pagamento> obterPagamentos() throws ClassNotFoundException, SQLException{
        return PagamentoDAO.obterPagamentos();
    };

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public double getValorRecebido() {
        return valorRecebido;
    }

    public void setValorRecebido(double valorRecebido) {
        this.valorRecebido = valorRecebido;
    }

    public double getTroco() {
        return troco;
    }

    public void setTroco(double troco) {
        this.troco = troco;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }
    
    
}
