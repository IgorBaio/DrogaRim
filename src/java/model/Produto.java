package model;

import dao.ProdutoDAO;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Produto implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idProduto;
    private String nome;
    private String nomeFarmaco;
    private double preco;
    private String tipo;
    private boolean receita;
    private boolean medicamento;
    private String lote;
    private int quantidade;
    @ManyToOne
    private Fabricante fabricante;
    @ManyToOne
    private Categoria categoria;

    public Produto() {
    }

    public Produto(Integer idProduto, String nome, String nomeFarmaco, double preco,
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

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public Categoria getCategoria() {
        return this.categoria;
    }

    public Fabricante getFabricante() {
        return this.fabricante;
    }
    
    public void setFabricante(Fabricante fabricante) {
        this.fabricante = fabricante;
    }

    public Integer getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Integer quantidade) {
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

    public Integer getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(Integer idProduto) {
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
        ProdutoDAO.gravar(this);
    }
}
