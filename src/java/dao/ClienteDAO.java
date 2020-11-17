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
import model.Cliente;
import model.Cliente;

/**
 *
 * @author mathe
 */
public class ClienteDAO {
    public static Cliente obterCliente(Integer id) throws ClassNotFoundException, SQLException{
         EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        Cliente cliente = null;
        try{
            tx.begin();
            cliente = em.find(Cliente.class, id);
            tx.commit();
        } catch (Exception e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            throw new RuntimeException(e);
        } finally {
            PersistenceUtil.close(em);
        }
        return cliente;
    };
    
    
     public static List<Cliente> obterClientes() throws ClassNotFoundException, SQLException{
         EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        List<Cliente> clientes = new ArrayList();
        try{
            tx.begin();
            TypedQuery<Cliente> query = em.createQuery("select c from Cliente c", Cliente.class);
            clientes = query.getResultList();
            tx.commit();
        }catch (Exception e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            throw new RuntimeException(e);
        } finally {
            PersistenceUtil.close(em);
        }
        return clientes;
    }
    
//    public static Cliente instanciarCliente(ResultSet rs) throws SQLException {
//        Cliente cliente = new Cliente(
//                    rs.getInt("IDCLIENTE"),
//                    rs.getString("nome"),
//                    rs.getString("cpf"),
//                    rs.getString("telefone"),
//                    rs.getString("email"),
//                    rs.getString("numeroCasa"),
//                    rs.getString("complemento"),
//                    rs.getString("data_nascimento"),
//                    rs.getBoolean("sexo"),
//                    rs.getString("cep"),
//                    rs.getString("logradouro"),
//                    rs.getString("bairro"),
//                    rs.getString("cidade"),
//                    rs.getString("uf")
//                    
//        );
//                    return cliente;
//        }
    
    public static void  gravar(Cliente cliente) throws SQLException, ClassNotFoundException {
        EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();

         try {
            tx.begin();
            if (cliente.getIdCliente()!= null) {
                em.merge(cliente);
            } else {
                em.persist(cliente);
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
    public static void excluir (Cliente cliente) throws SQLException, ClassNotFoundException{
         EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            tx.begin();
            em.remove(em.getReference(Cliente.class, cliente.getIdCliente()));
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
    
    public static void alterar(Cliente cliente) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "update cliente set "
                    +"nome = '" + cliente.getNome() +"' ,"
                    +"cpf = '" + cliente.getCpf()+"' ,"
                    +"telefone = '"+cliente.getTelefone()+"' ,"
                    +"email = '"+cliente.getEmail()+"' ,"
                    +"numeroCasa = '"+cliente.getNumeroCasa()+"' ,"
                    +"complemento = '"+cliente.getComplemento()+"' ,"
                    +"data_nascimento = '"+cliente.getDataNascimento()+"' ,"
                    +"sexo = "+cliente.getSexo()+" ,"
                    +"cep = '"+cliente.getCep()+"' ,"
                    +"logradouro = '"+cliente.getLogradouro()+"' ,"
                    +"bairro = '"+cliente.getBairro()+"' ,"
                    +"cidade = '"+cliente.getCidade()+"' ,"
                    +"uf = '"+cliente.getUf()+"' ";
            stringSQL = stringSQL + "where idCliente = "+cliente.getIdCliente()+" ";
            comando.execute(stringSQL);
            
        }finally{
            fecharConexao(conexao, comando);
        }
        
    }
    
    
}