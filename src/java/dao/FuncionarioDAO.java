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
import model.Funcionario;

/**
 *
 * @author Igori
 */
public class FuncionarioDAO {

    public static Funcionario obterFuncionario(int id) throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        Funcionario funcionario = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery(
                    "select * from funcionario where idFuncionario = " + id
            );
            rs.first();
            funcionario = instanciarFuncionario(rs);
        } finally {
            DAO.fecharConexao(conexao, comando);
        }
        return funcionario;
    }

    ;
    
    
    public static List<Funcionario> obterFuncionarios() throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        List<Funcionario> funcionarios = new ArrayList<Funcionario>();
        Funcionario funcionario = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from funcionario");
            while (rs.next()) {
                funcionario = instanciarFuncionario(rs);
                funcionarios.add(funcionario);
            }
        } finally {
            DAO.fecharConexao(conexao, comando);
        }
        return funcionarios;
    }

    public static Funcionario instanciarFuncionario(ResultSet rs) throws SQLException {

        Funcionario funcionario = new Funcionario(
                rs.getInt("idFuncionario"),
                rs.getString("funcao"),
                rs.getString("login"),
                rs.getString("senha")
        );

        return funcionario;
    }

    public static void gravar(Funcionario funcionario) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.prepareStatement(
                    "insert into funcionario(idFuncionario, funcao, login, senha)"
                    + " values(?,?,?,?)");
            comando.setInt(1, funcionario.getIdFuncionario());
            comando.setString(2, funcionario.getFuncao());
            comando.setString(3, funcionario.getLogin());
            comando.setString(4, funcionario.getSenha());
            comando.executeUpdate();
        } finally {
            fecharConexao(conexao, comando);
        }
    }
    
    public static void excluir(Funcionario funcionario) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
        
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "delete from funcionario where idFuncionario = " + funcionario.getIdFuncionario();
            comando.execute(stringSQL);
        }
        finally {
            fecharConexao(conexao, comando);
           
        }
    }
    
    public static void alterar(Funcionario funcionario) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "update funcionario set "
                    +"funcao = '" + funcionario.getFuncao() +"' ,"
                    +"login = '" + funcionario.getLogin()+"' ,"
                    +"senha = '"+funcionario.getSenha()+"' "; 
            stringSQL = stringSQL + "where idFuncionario = '" + funcionario.getIdFuncionario()+"' ";
            comando.execute(stringSQL);
            
        }finally{
            fecharConexao(conexao, comando);
        }
        
    }
}
