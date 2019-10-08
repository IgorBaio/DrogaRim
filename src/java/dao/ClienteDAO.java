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
                    null
        );
                    cliente.setChaveEndereco(rs.getInt("Endereco"));
                    return cliente;
        }
    
    
    public static void  gravar(Cliente cliente) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.prepareStatement ("insert into cliente (idCliente, nome, "
                    + "cpf, telefone, email, numeroCasa, "
                    + "complemento, data_nascimento, sexo, enderecos_id)"
                    + " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            comando.setInt(1, cliente.getIdCliente());
            comando.setString(2, cliente.getNome());
            comando.setString(3, cliente.getCpf());
            comando.setString(4, cliente.getTelefone());
            comando.setString(5, cliente.getEmail());
            comando.setString(6, cliente.getNumeroCasa());
            comando.setString(7, cliente.getComplemento());
            comando.setString(8, cliente.getDataNascimento());
            comando.setBoolean(9, cliente.getSexo());
        if (cliente.getEndereco() == null){
            comando.setNull(10, Types.INTEGER);
        }
        else{
            comando.setInt(10, cliente.getEndereco().getId());
        }
        comando.executeUpdate();
        }
        finally {
            fecharConexao(conexao, comando);
        }
}
}

