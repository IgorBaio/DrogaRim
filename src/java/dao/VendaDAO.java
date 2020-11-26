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
import model.Venda;

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
}
