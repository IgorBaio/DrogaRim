/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static dao.DAO.fecharConexao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import model.Produto;

/**
 *
 * @author Igori
 */
public class ProdutoDAO {

    public static Produto obterProduto(Integer idProduto) throws ClassNotFoundException, SQLException {
        EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        Produto produto = null;
        try {
            tx.begin();
            produto = em.find(Produto.class, idProduto);
            tx.commit();
        } catch (Exception e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            throw new RuntimeException(e);
        } finally {
            PersistenceUtil.close(em);
        }
        return produto;
    }

    public static List<Produto> obterProdutos() throws ClassNotFoundException, SQLException {
      EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        List<Produto> produtos = new ArrayList();
        try {
            tx.begin();
            TypedQuery<Produto> query = em.createQuery("select p from Produto p", Produto.class);
            produtos = query.getResultList();
            tx.commit();
        } catch (Exception e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            throw new RuntimeException(e);
        } finally {
            PersistenceUtil.close(em);
        }
        return produtos;
    }

//    public static Produto instanciarProduto(ResultSet rs) throws SQLException {
//        Produto produto = new Produto(
//                rs.getInt("idProduto"),
//                rs.getString("nome"),
//                rs.getString("nome_farmaco"),
//                rs.getFloat("preco"),
//                rs.getString("tipo"),
//                rs.getBoolean("receita"),
//                rs.getBoolean("medicamento"),
//                rs.getString("lote"),
//                rs.getInt("quantidade"),
//                null,
//                null);
//        produto.setIdFabricante(rs.getInt("idFabricante"));
//        produto.setIdCategoria(rs.getInt("idCategoria"));
//
//        //produto.setChaveEstoque(rs.getInt("ESTOQUE_ID"));
//        return produto;
//
//    }

    public static void gravar(Produto produto) throws SQLException, ClassNotFoundException {
              EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            tx.begin();
            if (produto.getIdProduto() != null) {
                em.merge(produto);
            } else {
                em.persist(produto);
            }
            tx.commit();
        } catch (Exception e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            throw new RuntimeException(e);
        } finally {
            PersistenceUtil.close(em);
        }
    }

    public static void excluir(Produto produto) throws SQLException, ClassNotFoundException {
        EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            tx.begin();
            em.remove(em.getReference(Produto.class, produto.getIdProduto()));
            tx.commit();
        } catch (Exception e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            throw new RuntimeException(e);
        } finally {
            PersistenceUtil.close(em);
        }
    }

//    public static void alterar(Produto produto) throws SQLException, ClassNotFoundException {
//        Connection conexao = null;
//        Statement comando = null;
//        String stringSQL;
//
//        try {
//            conexao = BD.getConexao();
//            comando = conexao.createStatement();
//            stringSQL = "update produto set "
//                    + "nome = '" + produto.getNome() + "' ,"
//                    + "nome_farmaco = '" + produto.getNomeFarmaco() + "' ,"
//                    + "preco = " + produto.getPreco() + " ,"
//                    + "tipo = '" + produto.getTipo() + "' ,"
//                    + "receita = " + produto.isReceita() + " ,"
//                    + "medicamento = " + produto.isMedicamento() + " ,"
//                    + "lote = '" + produto.getLote() + "' ,"
//                    + "quantidade = " + produto.getQuantidade() + " , "
//                    + "idCategoria = " + produto.getIdCategoria() + " , "
//                    + "idFabricante = " + produto.getIdFabricante() + " ";
//
//            stringSQL = stringSQL + "where idProduto = " + produto.getIdProduto() + " ";
//            comando.execute(stringSQL);
//
//        } finally {
//            fecharConexao(conexao, comando);
//        }
//
//    }

}
