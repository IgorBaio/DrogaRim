/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import dao.FuncionarioDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Igori
 */
public class Funcionario {

    private int idFuncionario;
    private String funcao;
    private String login;
    private String senha;

    public Funcionario(int idFuncionario, String funcao, String login, String senha) {
        this.idFuncionario = idFuncionario;
        this.funcao = funcao;
        this.login = login;
        this.senha = senha;
    }
    
    public static Funcionario obterFuncionario(int idFuncionario) throws ClassNotFoundException, SQLException{
        return FuncionarioDAO.obterFuncionario(idFuncionario);
    }
    
    public static List<Funcionario> obterFuncionarios() throws ClassNotFoundException, SQLException{
        return FuncionarioDAO.obterFuncionarios();
    }

    public int getIdFuncionario() {
        return idFuncionario;
    }

    public void setIdFuncionario(int idFuncionario) {
        this.idFuncionario = idFuncionario;
    }

    public String getFuncao() {
        return funcao;
    }

    public void setFuncao(String funcao) {
        this.funcao = funcao;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    public void gravar() throws SQLException, ClassNotFoundException{
        FuncionarioDAO.gravar(this);
    }
    public void excluir() throws SQLException, ClassNotFoundException{
        FuncionarioDAO.excluir(this);
    }
}
