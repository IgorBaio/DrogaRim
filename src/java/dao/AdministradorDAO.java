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
import model.Administrador;

/**
 *
 * @author Igori
 */
public class AdministradorDAO {

    public static Administrador obterAdministrador(int idAdministrador) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        Administrador administrador = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from administrador =" + idAdministrador);
            rs.first();
            administrador = instanciarAdministrador(rs);
        } finally {
            DAO.fecharConexao(conexao, comando);
        }
        return administrador;
    };
    
   
    public static List<Administrador> obterAdministradores() throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        List<Administrador> adms = new ArrayList<Administrador>();
        Administrador adm = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from adm");
            while (rs.next()) {
                adm = instanciarAdministrador(rs);
                adms.add(adm);
            }
        } finally {
            DAO.fecharConexao(conexao, comando);
        }
        return adms;
    }

    public static Administrador instanciarAdministrador(ResultSet rs) throws SQLException {
        Administrador administrador = new Administrador
        (
                rs.getInt("id"),
                rs.getString("login"),
                rs.getString("senha")
        );
        return administrador;
    }

}
