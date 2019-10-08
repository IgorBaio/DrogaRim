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
import model.Endereco;

/**
 *
 * @author Igori
 */
public class EnderecoDAO {
    public static Endereco obterEndereco(int idEndereco) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        Endereco endereco = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from endereco =" + idEndereco);
            rs.first();
            endereco = instanciarEndereco(rs);
        } finally {
            DAO.fecharConexao(conexao, comando);
        }
        return endereco;
    };
    
    public static List<Endereco> obterEnderecos() throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        List<Endereco> enderecos = new ArrayList<Endereco>();
        Endereco endereco = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from endereco");
            while (rs.next()) {
                endereco = instanciarEndereco(rs);
                enderecos.add(endereco);
            }
        } finally {
            DAO.fecharConexao(conexao, comando);
        }
        return enderecos;
    }

    public static Endereco instanciarEndereco(ResultSet rs) throws SQLException {
        Endereco endereco = new Endereco(
                rs.getInt("idEndereco"),
                rs.getInt("cep"),
                rs.getString("logradouro"),
                rs.getString("bairro"),
                rs.getString("cidade"),
                rs.getString("uf")
                
        );
        return endereco;
    }
    
     public static void gravar(Endereco endereco) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.prepareStatement(
                    "insert into enderecos(idEndereco, cep, logradouro, bairro, cidade, uf)"
                    +" values(?,?,?,?,?)");
            comando.setInt(1, endereco.getId());
            comando.setInt(2 , endereco.getCep());
            comando.setString(3 , endereco.getLogradouro() );
            comando.setString(4 , endereco.getBairro());
            comando.setString(5, endereco.getCidade());
            comando.setString(6, endereco.getUf());

            
        }finally{
            fecharConexao(conexao, comando);
            
        }
    }
    
}
