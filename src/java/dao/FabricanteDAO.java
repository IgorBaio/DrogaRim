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
 * @author mathe
 */
public class FabricanteDAO {
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
                Fabricantes.add(fabricante);
            }
        }  finally{
                   DAO.fecharConexao(conexao, comando); 
                    }
        return fabricantes;
    }
}