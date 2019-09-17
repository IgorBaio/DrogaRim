/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import static dao.DAO.fecharConexao;
import java.sql.Connection;
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
    public static Fabricante obterFabricante(int id) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        Fabricante fabricante = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery(
            "select * from fabricante where id = "+id
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
        List<Fabricante> fabricantes = new ArrayList<Fabricante>();
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
                rs.getInt("id"),
                rs.getString("nome")
        );
        return fabricante;
    }
    
}