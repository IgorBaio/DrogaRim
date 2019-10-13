/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.EstoqueDAO;
import dao.ProdutoDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Igori
 */
public class Produto {

    
    private int id;
    private String nome;
    private double preco;
    private String lote;
    private Estoque estoque;
    private int chaveEstoque;

    
    
    public Produto(int id, String nome, double preco,/*String lote ,*/Estoque estoque) {
        this.id = id;
        this.nome = nome;
        //this.lote = lote;
        this.estoque = estoque;
    }

    public Produto(int idProduto, String nome/*, String lote*/) {
        this.id = idProduto;
        this.nome = nome;
       // this.lote = lote;
    }

    public Produto(int id, String nome, double preco) {
        this.id = id;
        this.nome = nome;
        this.preco = preco;
//        this.estoque = estoque;
        
    }

    public Estoque getEstoque() throws ClassNotFoundException, SQLException{
        if((this.chaveEstoque != 0) && (this.estoque == null)){
            this.estoque = Produto.obterEstoque(this.chaveEstoque);
        }
        return estoque;
    }
    
     public static Estoque obterEstoque(int id) throws ClassNotFoundException, SQLException{
        return EstoqueDAO.obterEstoque(id);
    };
    
    
    public static List<Estoque> obterEstoques() throws ClassNotFoundException, SQLException{
        return EstoqueDAO.obterEstoques();
    };
    
    public static Produto obterProduto(int id) throws ClassNotFoundException, SQLException{
        return ProdutoDAO.obterProduto(id);
    };
    
    
    public static List<Produto> obterProdutos() throws ClassNotFoundException, SQLException{
        return ProdutoDAO.obterProdutos();
    };
    public void setEstoque(Estoque estoque) {
        this.estoque = estoque;
    }


    public int getChaveEstoque() {
        return chaveEstoque;
    }

    public void setChaveEstoque(int chaveEstoque) {
        this.chaveEstoque = chaveEstoque;
    }

    

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public String getLote() {
        return lote;
    }

    public void setLote(String lote) {
        this.lote = lote;
    }
    
    public void gravar() throws SQLException, ClassNotFoundException{
        ProdutoDAO.gravar(this);
    }
}
