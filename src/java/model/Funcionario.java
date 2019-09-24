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
public class Funcionario extends Pessoa {

    private Integer idFuncionario;
    private String funcao;
    private String login;
    private String senha;

    public Funcionario(Integer idFunc,String funcao, String login, String senha,int idPessoa, String nome, String cpf, String telefone, 
            String email,String numeroCasa, String complemento
            ,  String dataNascimento, String sexo, Endereco endereco) {
        //super(id, nome, cpf, telefone, email, numeroCasa, complemento, dataNascimento, sexo, endereco);
        super(idPessoa, nome, cpf, telefone, email, numeroCasa, complemento, dataNascimento, sexo, endereco);
        this.idFuncionario = idFunc;
        this.funcao = funcao;
        this.login = login;
        this.senha = senha;
    }

    public Funcionario(Integer idFunc,String funcao, String login, String senha, Pessoa pessoa) {
        super (pessoa);
        this.idFuncionario = idFunc;
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

}
