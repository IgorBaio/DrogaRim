/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static dao.PessoaDAO.instanciarPessoa;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Cliente;

/**
 *
 * @author mathe
 */
public class ClienteDAO {
    public static List<Cliente> obterClientes() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Cliente> Clientes = new ArrayList<Cliente>();
        Cliente cliente = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from cliente");
            while(rs.next()){
                cliente = (Cliente) instanciarPessoa(rs);
                Clientes.add(cliente);
            }
        }  finally{
                   DAO.fecharConexao(conexao, comando); 
                    }
        return Clientes;
    }
    
     
}

