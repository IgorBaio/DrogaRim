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
public class Produto {
    private int id;
    private String nome;
    private float preco;
    private String lote;
    private Estoque estoque;
    private int chaveEstoque;

    public Produto(int id, String nome, float preco,String lote ,Estoque estoque) {
        this.id = id;
        this.nome = nome;
        this.lote = lote;
        this.estoque = estoque;
    }

    public Estoque getEstoque() {
        return estoque;
    }

    public void setEstoque(Estoque estoque) {
        this.estoque = estoque;
    }


    public int getChaveEstoque() {
        return chaveEstoque;
    }

    public void setChaveEstoque(int chaveEstoque) {
        this.chaveEstoque = chaveEstoque;
    }

    

    public Produto(int aInt, int aInt0, int aInt1) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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

    public void setPreco(float preco) {
        this.preco = preco;
    }

    public String getLote() {
        return lote;
    }

    public void setLote(String lote) {
        this.lote = lote;
    }
}
