/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Igori
 */
public class EnderecoDAO {
     public static List<Endereco> obterEnderecos() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Endereco> enderecos = new ArrayList<Endereco>();
        Endereco endereco = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from endereco");
            while(rs.next()){
                endereco = instanciarEndereco(rs);
                enderecos.add(endereco);
            }
        }  finally{
                   DAO.fecharConexao(conexao, comando); 
                    }
        return enderecos;
    }
}
