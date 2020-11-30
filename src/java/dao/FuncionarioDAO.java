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
import model.Funcionario;

public class FuncionarioDAO {

    public static Funcionario obterFuncionario(Integer id) throws ClassNotFoundException, SQLException {
        EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        Funcionario funcionario = null;
        try {
            tx.begin();
            funcionario = em.find(Funcionario.class, id);
            tx.commit();
        } catch (Exception e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            throw new RuntimeException(e);
        } finally {
            PersistenceUtil.close(em);
        }
        return funcionario;
    }

    public static List<Funcionario> obterFuncionarios() throws ClassNotFoundException, SQLException {
        EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        List<Funcionario> funcionarios = new ArrayList();
        try {
            tx.begin();
            TypedQuery<Funcionario> query = em.createQuery("select f from Funcionario f", Funcionario.class);
            funcionarios = query.getResultList();
            tx.commit();
        } catch (Exception e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            throw new RuntimeException(e);
        } finally {
            PersistenceUtil.close(em);
        }
        return funcionarios;
    }

    public static void gravar(Funcionario funcionario) throws SQLException, ClassNotFoundException {
        EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            tx.begin();
            if (funcionario.getIdFuncionario() != null) {
                em.merge(funcionario);
            } else {
                em.persist(funcionario);
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

    public static void excluir(Funcionario funcionario) throws SQLException, ClassNotFoundException {
        EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            tx.begin();
            em.remove(em.getReference(Funcionario.class, funcionario.getIdFuncionario()));
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

    public static void alterar(Funcionario funcionario) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "update funcionario set "
                    + "funcao = '" + funcionario.getFuncao() + "' ,"
                    + "login = '" + funcionario.getLogin() + "' ,"
                    + "senha = '" + funcionario.getSenha() + "' ";
            stringSQL = stringSQL + "where idFuncionario = '" + funcionario.getIdFuncionario() + "' ";
            comando.execute(stringSQL);

        } finally {
            fecharConexao(conexao, comando);
        }

    }
}
