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
import model.Fabricante;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

public class FabricanteDAO {

    private FabricanteDAO() {

    }
    
    public static Fabricante obterFabricante(int idFabricante) throws ClassNotFoundException, SQLException{
        EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        Fabricante fabricante = null;
        try{
            tx.begin();
            fabricante = em.find(Fabricante.class, idFabricante);
            tx.commit();
        } catch (Exception e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            throw new RuntimeException(e);
        } finally {
            PersistenceUtil.close(em);
        }
        return fabricante;
    };
    
    public static List<Fabricante> obterFabricantes() throws ClassNotFoundException, SQLException{
        EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        List<Fabricante> fabricantes = new ArrayList();
        try{
            tx.begin();
            TypedQuery<Fabricante> query = em.createQuery("select f from Fabricante f", Fabricante.class);
            fabricantes = query.getResultList();
            tx.commit();
        }catch (Exception e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            throw new RuntimeException(e);
        } finally {
            PersistenceUtil.close(em);
        }
        return fabricantes;
    }
    
    public static Fabricante instanciarFabricante(ResultSet rs) throws SQLException {
        Fabricante fabricante = new Fabricante(
                rs.getInt("idFabricante"),
                rs.getString("nome")
        );
        return fabricante;
    }

    public static void gravar(Fabricante fabricante) throws SQLException, ClassNotFoundException {
        EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();

         try {
            tx.begin();
            if (fabricante.getIdFabricante()!= null) {
                em.merge(fabricante);
            } else {
                em.persist(fabricante);
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

    public static void excluir(Fabricante fabricante) throws SQLException, ClassNotFoundException {
        EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            tx.begin();
            em.remove(em.getReference(Fabricante.class, fabricante.getIdFabricante()));
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

    public static void alterar(Fabricante fabricante) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "update fabricante set "
                    + "nome = '" + fabricante.getNome() + "' ";

            stringSQL = stringSQL + "where idFabricante= '" + fabricante.getIdFabricante() + "' ";
            comando.execute(stringSQL);

        } finally {
            fecharConexao(conexao, comando);
        }

    }

}
