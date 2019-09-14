/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Igori
 */
public class Funcionario extends Pessoa {

    private String funcao;
    private String login;
    private String senha;

    public Funcionario(String funcao, String login, String senha,int id, String nome, String cpf, String telefone, 
            String email,String numeroCasa, String complemento
            ,  String dataNascimento, String sexo, Endereco endereco) {
        super(id, nome, cpf, telefone, email,numeroCasa,complemento, endereco, dataNascimento, sexo);
        this.funcao = funcao;
        this.login = login;
        this.senha = senha;
    }

    private Funcionario(int id, String nome, String cpf, String telefone, String email, String numeroCasa, String complemento, Endereco endereco, String dataNascimento, String sexo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
