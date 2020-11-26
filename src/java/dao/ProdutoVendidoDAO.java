
package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import model.ProdutoVendido;

public class ProdutoVendidoDAO {
    

    public static void gravar(ProdutoVendido produtoVendido) throws SQLException, ClassNotFoundException {
        EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            tx.begin();
            if (produtoVendido.getIdProdutoVendido() != null) {
                em.merge(produtoVendido);
            } else {
                em.persist(produtoVendido);
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
    
    public static void excluir(ProdutoVendido produtoVendido) throws SQLException, ClassNotFoundException {
       EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            tx.begin();
            em.remove(em.getReference(ProdutoVendido.class, produtoVendido.getIdProdutoVendido()));
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
    
    public static ProdutoVendido obterProdutoVendido(Integer idProdutoVendido) throws ClassNotFoundException, SQLException {
        EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        ProdutoVendido produtoVendido = null;
        try {
            tx.begin();
            produtoVendido = em.find(ProdutoVendido.class, idProdutoVendido);
            tx.commit();
        } catch (Exception e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            throw new RuntimeException(e);
        } finally {
            PersistenceUtil.close(em);
        }
        return produtoVendido;
    }

    public static List<ProdutoVendido> obterProdutosVendidos(Integer idVenda) throws ClassNotFoundException, SQLException {
       EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        List<ProdutoVendido> produtoVendidos = new ArrayList();
        try {
            tx.begin();
            TypedQuery<ProdutoVendido> query = em.createQuery("select pv from ProdutoVendido pv where pv.venda.idVenda = "+idVenda+"", ProdutoVendido.class);
            produtoVendidos = query.getResultList();
            tx.commit();
        } catch (Exception e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            throw new RuntimeException(e);
        } finally {
            PersistenceUtil.close(em);
        }
        return produtoVendidos;
    }

}
