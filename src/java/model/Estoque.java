/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.EstoqueDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Igori
 */
public class Estoque {
    private int id;
    private int quantidade;
    private int quantidadeMinima;
    
    

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
    
}
