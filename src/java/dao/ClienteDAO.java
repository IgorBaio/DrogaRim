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
import model.Cliente;

/**
 *
 * @author mathe
 */
public class ClienteDAO {
    public static Cliente obterCliente(int id) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        Cliente cliente = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery(
            "select * from CLIENTE where idCliente = "+id
            );
        rs.first();
        cliente = (Cliente)instanciarCliente(rs);
        }finally{
            DAO.fecharConexao(conexao, comando);
        }
        return cliente;
    };
    
    
     public static List<Cliente> obterClientes() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Cliente> clientes = new ArrayList<Cliente>();
        Cliente cliente = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from CLIENTE");
            while(rs.next()){
                cliente = instanciarCliente(rs);
                clientes.add(cliente);
            }
        }  finally{
                   DAO.fecharConexao(conexao, comando); 
                    }
        return clientes;
    }
    
    public static Cliente instanciarCliente(ResultSet rs) throws SQLException {
        Cliente cliente = new Cliente(
                    rs.getInt("IDCLIENTE"),
                    rs.getString("nome"),
                    rs.getString("cpf"),
                    rs.getString("telefone"),
                    rs.getString("email"),
                    rs.getString("numeroCasa"),
                    rs.getString("complemento"),
                    rs.getString("data_nascimento"),
                    rs.getBoolean("sexo"),
                    rs.getString("cep"),
                    rs.getString("logradouro"),
                    rs.getString("bairro"),
                    rs.getString("cidade"),
                    rs.getString("uf")
                    
        );
                    return cliente;
        }
    
    public static void  gravar(Cliente cliente) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.prepareStatement ("insert into cliente (idCliente, nome, "
                    + "cpf, telefone, email, numeroCasa, "
                    + "complemento, data_nascimento, sexo, cep, logradouro, bairro, cidade,uf)"
                    + " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?,?,?)");
            comando.setInt(1, cliente.getIdCliente());
            comando.setString(2, cliente.getNome());
            comando.setString(3, cliente.getCpf());
            comando.setString(4, cliente.getTelefone());
            comando.setString(5, cliente.getEmail());
            comando.setString(6, cliente.getNumeroCasa());
            comando.setString(7, cliente.getComplemento());
            comando.setString(8, cliente.getDataNascimento());
            comando.setBoolean(9, cliente.getSexo());
            comando.setString(10, cliente.getCep());
            comando.setString(11, cliente.getLogradouro());
            comando.setString(12, cliente.getBairro());
            comando.setString(13, cliente.getCidade());
            comando.setString(14, cliente.getUf());
            comando.executeUpdate();
        }
        finally {
            fecharConexao(conexao, comando);
        }
}
    public static void excluir (Cliente cliente) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "delete from cliente where idCliente = " + cliente.getIdCliente();
            comando.execute(stringSQL);
        }finally{
            fecharConexao(conexao, comando);
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
            stringSQL = stringSQL + "where idCliente = '"+cliente.getIdCliente()+"'";
            comando.execute(stringSQL);
            
        }finally{
            fecharConexao(conexao, comando);
        }
        
    }
    
    
}

