package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class PersistenceUtil {
    
    public EntityManager getConexao() {
        return emf.createEntityManager();
    }
    
    private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("DROGARIM");

    PersistenceUtil() {
    }

    public static EntityManager getEntityManager() {
        if (emf == null) {
            emf = Persistence.createEntityManagerFactory("DROGARIM");
        }
        return emf.createEntityManager();
    }

    public static void close(EntityManager em) {
        if (em != null) {
            em.close();
        }
    }

}
