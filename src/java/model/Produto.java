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

    private int idProduto;
    private String nome;
    private String nomeFarmaco;
    private double preco;
    private String categoria;
    private String tipo;
    private boolean receita;
    private Estoque estoque;
    private int chaveEstoque;
    private boolean medicamento;
    private String lote;
    private int quantidade;

    public Produto(int idProduto, String nome, String nomeFarmaco, double preco, String categoria,
             String tipo, boolean receita, boolean medicamento, String lote, int quantidade) {
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

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
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

    public Estoque getEstoque() throws ClassNotFoundException, SQLException {
        if ((this.chaveEstoque != 0) && (this.estoque == null)) {
            this.estoque = Produto.obterEstoque(this.chaveEstoque);
        }
        return estoque;
    }

    public static Estoque obterEstoque(int idProduto) throws ClassNotFoundException, SQLException {
        return EstoqueDAO.obterEstoque(idProduto);
    }

    public static List<Estoque> obterEstoques() throws ClassNotFoundException, SQLException {
        return EstoqueDAO.obterEstoques();
    }

    public static Produto obterProduto(int idProduto) throws ClassNotFoundException, SQLException {
        return ProdutoDAO.obterProduto(idProduto);
    }

    public static List<Produto> obterProdutos() throws ClassNotFoundException, SQLException {
        return ProdutoDAO.obterProdutos();
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
