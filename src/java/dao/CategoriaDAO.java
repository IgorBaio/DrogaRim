/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static dao.DAO.fecharConexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Categoria;

/**
 *
 * @author mathe
 */
public class CategoriaDAO {

    public static Categoria obterCategoria(int idCategoria) throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        Categoria categoria = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery(
                    "select * from categoria where idCategoria = " + idCategoria
            );
            rs.first();
            categoria = instanciarCategoria(rs);
        } finally {
            fecharConexao(conexao, comando);
        }
        return categoria;
    }

    ;
    
    public static List<Categoria> obterCategorias() throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        List<Categoria> categorias = new ArrayList();
        Categoria categoria = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from categoria");
            while (rs.next()) {
                categoria = instanciarCategoria(rs);
                categorias.add(categoria);
            }
        } finally {
            DAO.fecharConexao(conexao, comando);
        }
        return categorias;
    }

    public static Categoria instanciarCategoria(ResultSet rs) throws SQLException {
        Categoria categoria = new Categoria(
                rs.getInt("idCategoria"),
                rs.getString("nome")
        );
        return categoria;
    }

    public static void gravar(Categoria categoria) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.prepareStatement("insert into categoria(idCategoria, nome) values (?, ?)");
            comando.setInt(1, categoria.getIdCategoria());
            comando.setString(2, categoria.getNome());
            comando.executeUpdate();
        } finally {
            fecharConexao(conexao, comando);
        }
    }

    public static void excluir(Categoria categoria) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "delete from categoria where idCategoria = " + categoria.getIdCategoria();
            comando.execute(stringSQL);
        } finally {
            fecharConexao(conexao, comando);

        }
    }

    public static void alterar(Categoria categoria) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "update categoria set "
                    + "nome = '" + categoria.getNome() + "' ";

            stringSQL = stringSQL + "where idCategoria= '" + categoria.getIdCategoria() + "' ";
            comando.execute(stringSQL);

        } finally {
            fecharConexao(conexao, comando);
        }

    }
}
