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
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import model.ProdutoVendido;
import model.Venda;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

/**
 *
 * @author mathe
 */
public class ProdutoVendidoDAO {
    

    public static void gravar(ProdutoVendido produtoVendido) throws SQLException, ClassNotFoundException {
        EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        try {
            tx.begin();
            if (produtoVendido == null){
                em.persist(produtoVendido);
            } else{
                em.merge(produtoVendido);
            }
            tx.commit();
        } catch (Exception e){
            tx.rollback();
            System.err.println(e);
        } finally{
            em.close();
        }
    }
    
    public static void excluir(ProdutoVendido produtoVendido) throws SQLException, ClassNotFoundException {
        EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        try{
            tx.begin();
            em.remove(produtoVendido);
            tx.commit();
        } catch (Exception e){
            tx.rollback();
            System.err.println(e);
        }finally{
            em.close();
        }
    }
    
    public static ProdutoVendido obterProdutoVendido(int idProdutoVendido) throws ClassNotFoundException, SQLException {
        EntityManager em = PersistenceUtil.getEntityManager();
        ProdutoVendido produtoVendido = null;
        try {
            produtoVendido = em.find(ProdutoVendido.class, idProdutoVendido);
        } catch (Exception e) {
            System.err.println(e);
        } finally {
            em.close();
        }
        return produtoVendido;
    }

    public static List<ProdutoVendido> obterProdutosVendidos(int idVenda) throws ClassNotFoundException, SQLException {
        EntityManager em = PersistenceUtil.getEntityManager();
        List<ProdutoVendido> produtosVendidos = new ArrayList<>();
        try {
            produtosVendidos = em.createQuery("from ProdutoVendido pv where idVenda = " + idVenda).getResultList();
        } catch (Exception e) {
            System.err.println(e);
        } finally {
            em.close();
        }
        return produtosVendidos;
    }

    /**
     * public static List<ProdutoVendido> listarProdutosVendidos() throws
     * ClassNotFoundException, SQLException{ Connection conexao = null;
     * Statement comando = null; List<ProdutoVendido> produtosVendidos = new
     * ArrayList<>(); ProdutoVendido produtoVendido = null; try { conexao =
     * BD.getConexao(); comando = conexao.createStatement(); ResultSet rs =
     * comando.executeQuery("select * from produto_vendido");
     *
     * while (rs.next()) { produtoVendido = instanciarProdutoVendido(rs);
     * produtosVendidos.add(produtoVendido); } } finally {
     * DAO.fecharConexao(conexao, comando); } return produtosVendidos;
     *
     * }      *
     * public static ProdutoVendido listarProdutoVendido(int idVenda) throws
     * ClassNotFoundException, SQLException { Connection conexao = null;
     * Statement comando = null; ProdutoVendido produtoVendido = null; // Venda
     * venda = Venda.obterVenda(produtoVendido.getIdVenda()); //idProdutoVendido
     * = venda.getIdVenda();
     *
     * try { conexao = BD.getConexao(); comando = conexao.createStatement();
     * ResultSet rs = comando.executeQuery("select * from produto_vendido where
     * idVenda = " +idVenda); rs.first(); produtoVendido =
     * instanciarProdutoVendido(rs); } finally { fecharConexao(conexao,
     * comando); } return produtoVendido;
    }*
     */
    public static ProdutoVendido instanciarProdutoVendido(ResultSet rs) throws SQLException {
        ProdutoVendido produtoVendido = new ProdutoVendido(
                rs.getInt("idProdutoVendido"),
                rs.getDouble("preco"),
                null,
                null);
        produtoVendido.setIdProduto(rs.getInt("idProduto"));
        produtoVendido.setIdVenda(rs.getInt("idVenda"));

        return produtoVendido;
    }

//    public static void alterar(ProdutoVendido produtoVendido) throws SQLException, ClassNotFoundException {
//        Connection conexao = null;
//        Statement comando = null;
//        String stringSQL;
//
//        try {
//           
//            conexao = BD.getConexao();
//            comando = conexao.createStatement();
//            stringSQL = "update produto_vendido set "
//                    + "preco = " + produtoVendido.getPreco() + " ,"
//                    + "idProduto = " + produtoVendido.getProduto().getIdProduto() + " , "
//                    + "idVenda = " + produtoVendido.getVenda().getIdVenda() + " ";
//            stringSQL = stringSQL + "where idProdutoVendido = " + produtoVendido.getIdProdutoVendido() + ";";
//            comando.execute(stringSQL);
////            double diferenca = produtoVendido.getVenda().getPrecoTotal() - produtoVendido.getPreco();
////            ProdutoVendido.diferencaPreco = ProdutoVendido.diferencaPreco - produtoVendido.getPreco();
////            produtoVendido.getVenda().setPrecoTotal(produtoVendido.getPreco());
//            stringSQL = "update venda set preco_total = preco_total - "+ ProdutoVendido.diferencaPreco +
//                     " where idVenda = "+produtoVendido.getVenda().getIdVenda();
//            comando.execute(stringSQL);
//            ProdutoVendido.diferencaPreco =0;
//
//        } finally {
//            fecharConexao(conexao, comando);
//        }
//    }

}
