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
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import model.Categoria;
import model.Funcionario;

/**
 *
 * @author mathe
 */
public class CategoriaDAO {

    public static Categoria obterCategoria(Integer idCategoria) throws ClassNotFoundException, SQLException {
        EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        Categoria categoria = null;
        try{
            tx.begin();
            categoria = em.find(Categoria.class, idCategoria);
            tx.commit();
        } catch (Exception e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            throw new RuntimeException(e);
        } finally {
            PersistenceUtil.close(em);
        }
        return categoria;
    }

    ;
    
    public static List<Categoria> obterCategorias() throws ClassNotFoundException, SQLException {
         EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        List<Categoria> categorias = new ArrayList();
        try{
            tx.begin();
            TypedQuery<Categoria> query = em.createQuery("select c from Categoria c", Categoria.class);
            categorias = query.getResultList();
            tx.commit();
        }catch (Exception e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            throw new RuntimeException(e);
        } finally {
            PersistenceUtil.close(em);
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
