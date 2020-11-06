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
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import model.Fabricante;
import model.Venda;
import model.Venda;

/**
 *
 * @author mathe
 */
public class VendaDAO {

    public static List<Venda> obterVendas() throws ClassNotFoundException, SQLException {
      EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        List<Venda> vendas = new ArrayList();
        try {
            tx.begin();
            TypedQuery<Venda> query = em.createQuery("select v from Venda v", Venda.class);
            vendas = query.getResultList();
            tx.commit();
        } catch (Exception e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            throw new RuntimeException(e);
        } finally {
            PersistenceUtil.close(em);
        }
        return vendas;
    }

    public static Venda obterVenda(Integer idVenda) throws SQLException, ClassNotFoundException {
         EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        Venda venda = null;
        try {
            tx.begin();
            venda = em.find(Venda.class, idVenda);
            tx.commit();
        } catch (Exception e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            throw new RuntimeException(e);
        } finally {
            PersistenceUtil.close(em);
        }
        return venda;
    }
    
//    private static Venda instanciarVenda(ResultSet rs) throws SQLException {
//        Venda venda = new Venda(
//                rs.getInt("idVenda"),
//                rs.getString("data_venda"),
//                rs.getDouble("preco_total"),
//                null, null);
//        venda.setIdCliente(rs.getInt("idCliente"));
//        venda.setIdVenda(rs.getInt("idVenda"));
//
//        return venda;
//    }
    
      public static void gravar(Venda venda) throws ClassNotFoundException, SQLException {
            EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            tx.begin();
            if (venda.getIdVenda() != null) {
                em.merge(venda);
            } else {
                em.persist(venda);
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
    
   

    public static void excluir(Venda venda) throws ClassNotFoundException, SQLException {
       EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            tx.begin();
            em.remove(em.getReference(Venda.class, venda.getIdVenda()));
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
    
    
    public static void alterar(Venda venda) throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "update venda set "
                    + "data_venda = '" + venda.getDataVenda() + "', "
                    + "idCliente = " + venda.getCliente().getIdCliente() + ", "
                    + "idVenda = " + venda.getIdVenda() + ", "
                    + "preco_total = " + venda.getPrecoTotal() + " ";

            stringSQL = stringSQL + " where idVenda = " + venda.getIdVenda() + " ;";

            comando.execute(stringSQL);
        } finally {
            fecharConexao(conexao, comando);
        }
    }
}
