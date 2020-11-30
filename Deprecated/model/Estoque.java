
package model;

import dao.EstoqueDAO;
import java.sql.SQLException;
import java.util.List;

public class Estoque {
    private int id;
    private int quantidade;
    private int quantidadeMinima;
    private Produto produto;

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }
    
    

    public Estoque(int id, int quantidade, int quantidadeMinima) {
        this.id = id;
        this.quantidade = quantidade;
        this.quantidadeMinima = quantidadeMinima;
    }
    
     public static Estoque obterEstoque(int idEstoque) throws ClassNotFoundException, SQLException{
        return EstoqueDAO.obterEstoque(idEstoque);
    }
    
    public static List<Estoque> obterEstoques() throws ClassNotFoundException, SQLException{
        return EstoqueDAO.obterEstoques();
    }

    public Estoque(int idEstoque) {
        this.id = idEstoque;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public int getQuantidadeMinima() {
        return quantidadeMinima;
    }

    public void setQuantidadeMinima(int quantidadeMinima) {
        this.quantidadeMinima = quantidadeMinima;
    }
    public void gravar() throws SQLException, ClassNotFoundException{
        EstoqueDAO.gravar(this);
    }
    
    public void excluir() throws SQLException, ClassNotFoundException{
        EstoqueDAO.excluir(this);
    }
}
