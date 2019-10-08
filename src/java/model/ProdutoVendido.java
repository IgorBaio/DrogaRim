/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.ProdutoDAO;
import dao.ProdutoVendidoDAO;
import dao.VendaDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Igori
 */
public class ProdutoVendido {
    private int id;
    private double preco;
    private Produto produtos;
    private Venda venda;
    private int chaveProduto;
    private int chaveVenda;

    public ProdutoVendido(int id, double preco, Produto produtos, Venda venda) {
        this.id = id;
        this.preco = preco;
        this.produtos = produtos;
        this.venda = venda;
    }

     

    public Produto getProduto() throws ClassNotFoundException, SQLException{
        if((this.chaveProduto != 0) && (this.produtos == null)){
            this.produtos = ProdutoVendido.obterProduto(this.chaveProduto);
        }
        return produtos;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
     public static Produto obterProduto(int id) throws ClassNotFoundException, SQLException{
        return ProdutoDAO.obterProduto(id);
    };
    
    
    public static List<Produto> obterProdutos() throws ClassNotFoundException, SQLException{
        return ProdutoDAO.obterProdutos();
    };
    
    public Venda getVenda() throws ClassNotFoundException, SQLException{
        if((this.chaveVenda != 0) && (this.venda == null)){
            this.venda = Venda.obterVenda(this.chaveVenda);
        }
        return venda;
    }

    public void setProdutos(Produto produtos) {
        this.produtos = produtos;
    }

    public static Venda obterVenda(int id) throws ClassNotFoundException, SQLException{
        return VendaDAO.obterVenda(id);
    };
    
    
    public static List<Venda> obterVenda() throws ClassNotFoundException, SQLException{
        return VendaDAO.obterVendas();
    };
   

    public void setVenda(Venda venda) {
        this.venda = venda;
    }

    public int getChaveProduto() {
        return chaveProduto;
    }

    public void setChaveProduto(int chaveProduto) {
        this.chaveProduto = chaveProduto;
    }

    public int getChaveVenda() {
        return chaveVenda;
    }

    public void setChaveVenda(int chaveVenda) {
        this.chaveVenda = chaveVenda;
    }
    
    

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }
    
    public void gravar() throws SQLException, ClassNotFoundException{
        ProdutoVendidoDAO.gravar(this);
    }
}
