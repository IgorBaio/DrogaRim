/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.PessoaDAO;
import java.sql.SQLException;
import java.util.List;


public class Pessoa {
    private int id;
    private String nome;
    private String cpf;
    private String telefone;
    private String email;
    private String numeroCasa;
    private String complemento;
    private String dataNascimento;
    private String sexo;
    private Endereco endereco;
    private int chaveEndereco;

    public Pessoa(int id, String nome, String cpf, String telefone, 
            String email,String numeroCasa, String complemento
            ,  String dataNascimento, String sexo, Endereco endereco) {
        this.id = id;
        this.nome = nome;
        this.cpf = cpf;
        this.telefone = telefone;
        this.email = email;
        this.numeroCasa = numeroCasa;
        this.complemento = complemento;
        this.dataNascimento = dataNascimento;
        this.sexo = sexo;
        this.endereco = endereco;
    }

    public static Pessoa obterPessoa(int id) throws ClassNotFoundException, SQLException{
        return PessoaDAO.obterPessoa(id);
    };
    
    
    public static List<Pessoa> obterPessoas() throws ClassNotFoundException, SQLException{
        return PessoaDAO.obterPessoas();
    };
    
    public int getChaveEndereco() {
        return chaveEndereco;
    }

    public void setChaveEndereco(int chaveEndereco) {
        this.chaveEndereco = chaveEndereco;
    }

    public String getNumeroCasa() {
        return numeroCasa;
    }

    public void setNumeroCasa(String numeroCasa) {
        this.numeroCasa = numeroCasa;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    
    

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(String dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public String isSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
    
    
    
}
