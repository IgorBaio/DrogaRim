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
import model.Fabricante;

/**
 *
 * @author mathe
 */
public class FabricanteDAO {
    public static Fabricante obterFabricante(int idFabricante) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        Fabricante fabricante = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery(
            "select * from fabricante where idFabricante = "+idFabricante
            );
        rs.first();
        fabricante = instanciarFabricante(rs);
        }finally{
            fecharConexao(conexao, comando);
        }
        return fabricante;
    };
    
    public static List<Fabricante> obterFabricantes() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Fabricante> fabricantes = new ArrayList();
        Fabricante fabricante = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from fabricante");
            while(rs.next()){
                fabricante = instanciarFabricante(rs);
                fabricantes.add(fabricante);
            }
        }  finally{
                   DAO.fecharConexao(conexao, comando); 
                    }
        return fabricantes;
    }
    
    public static Fabricante instanciarFabricante(ResultSet rs) throws SQLException {
        Fabricante fabricante = new Fabricante(
                rs.getInt("idFabricante"),
                rs.getString("nome")
        );
        return fabricante;
    }
    
    public static void gravar(Fabricante fabricante) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.prepareStatement ("insert into fabricante(idFabricante, nome) values (?, ?)");
            comando.setInt(1, fabricante.getIdFabricante());
            comando.setString(2, fabricante.getNome());
            comando.executeUpdate();
        }
        finally {
            fecharConexao(conexao, comando);
        }
    }
    
    public static void excluir(Fabricante fabricante) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
        
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "delete from fabricante where idFabricante = " + fabricante.getIdFabricante();
            comando.execute(stringSQL);
        }
        finally {
            fecharConexao(conexao, comando);
           
        }
    }
    
}