/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

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

     

    public Produto getProdutos() {
        return produtos;
    }

    public void setProdutos(Produto produtos) {
        this.produtos = produtos;
    }

    public Venda getVenda() {
        return venda;
    }

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
    
}
