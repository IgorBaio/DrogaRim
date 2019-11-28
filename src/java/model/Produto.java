/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.ProdutoDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Igori
 */
public class Produto {

    private int idProduto;
    private String nome;
    private String nomeFarmaco;
    private double preco;
    private String tipo;
    private boolean receita;
    private boolean medicamento;
    private String lote;
    private int quantidade;
    private Fabricante fabricante;
    private int idFabricante;
    private Categoria categoria;
    private int idCategoria;

    public Produto(int idProduto, String nome, String nomeFarmaco, double preco,
            String tipo, boolean receita, boolean medicamento, String lote, int quantidade, Fabricante fabricante, Categoria categoria) {
        this.idProduto = idProduto;
        this.nome = nome;
        this.nomeFarmaco = nomeFarmaco;
        this.preco = preco;
        this.categoria = categoria;
        this.tipo = tipo;
        this.receita = receita;
        this.medicamento = medicamento;
        this.lote = lote;
        this.quantidade = quantidade;
        this.fabricante = fabricante;
    }

    public Fabricante getFabricante() throws ClassNotFoundException, SQLException {
        if ((this.idFabricante != 0) && (this.fabricante == null)) {
            this.fabricante = Fabricante.obterFabricante(this.idFabricante);
        }
        return this.fabricante;
    }

    public void setFabricante(Fabricante fabricante) {
        this.fabricante = fabricante;
    }

    public int getIdFabricante() {
        return idFabricante;
    }

    public void setIdFabricante(int idFabricante) {
        this.idFabricante = idFabricante;
    }
    
     public Categoria getCategoria() throws ClassNotFoundException, SQLException {
        if ((this.idCategoria != 0) && (this.categoria == null)) {
            this.categoria = Categoria.obterCategoria(this.idCategoria);
        }
        return this.categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public String getNomeFarmaco() {
        return nomeFarmaco;
    }

    public void setNomeFarmaco(String nomeFarmaco) {
        this.nomeFarmaco = nomeFarmaco;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public boolean isReceita() {
        return receita;
    }

    public void setReceita(boolean receita) {
        this.receita = receita;
    }

    public boolean isMedicamento() {
        return medicamento;
    }

    public void setMedicamento(boolean medicamento) {
        this.medicamento = medicamento;
    }

    public static Produto obterProduto(int idProduto) throws ClassNotFoundException, SQLException {
        return ProdutoDAO.obterProduto(idProduto);
    }

    public static List<Produto> obterProdutos() throws ClassNotFoundException, SQLException {
        return ProdutoDAO.obterProdutos();
    }

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
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

    public void gravar() throws SQLException, ClassNotFoundException {
        ProdutoDAO.gravar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException {
        ProdutoDAO.excluir(this);
    }

    public void alterar() throws SQLException, ClassNotFoundException {
        ProdutoDAO.alterar(this);
    }
}
