package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import model.Categoria;

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

    public static void gravar(Categoria categoria) throws SQLException, ClassNotFoundException {
         EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            tx.begin();
            if (categoria.getIdCategoria() != null) {
                em.merge(categoria);
            } else {
                em.persist(categoria);
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

    public static void excluir(Categoria categoria) throws SQLException, ClassNotFoundException {
   EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            tx.begin();
            em.remove(em.getReference(Categoria.class, categoria.getIdCategoria()));
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
