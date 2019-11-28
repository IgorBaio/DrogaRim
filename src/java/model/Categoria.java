package model;
import dao.CategoriaDAO;
import java.sql.SQLException;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mathe
 */
public class Categoria {
        private int idCategoria;
    private String nome;

    public Categoria(int idCategoria, String nome) {
        this.idCategoria = idCategoria;
        this.nome = nome;
    }
    
    public static Categoria obterCategoria(int idCategoria) throws ClassNotFoundException, SQLException{
        return CategoriaDAO.obterCategoria(idCategoria);
    }
    
    public static List<Categoria> obterCategorias() throws ClassNotFoundException, SQLException{
        return CategoriaDAO.obterCategorias();
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public void gravar() throws SQLException, ClassNotFoundException{
        CategoriaDAO.gravar(this);
    }
        public void excluir() throws SQLException, ClassNotFoundException{
        CategoriaDAO.excluir(this);
    }
         public void alterar() throws SQLException, ClassNotFoundException{
        CategoriaDAO.alterar(this);
    }
        
        
}

