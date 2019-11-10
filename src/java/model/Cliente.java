/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.ClienteDAO;
import java.sql.SQLException;
import java.util.List;


public class Cliente {
    private int idCliente;
    private String nome;
    private String cpf;
    private String telefone;
    private String email;
    private String numeroCasa;
    private String complemento;
    private String dataNascimento;
    private boolean sexo;
    private String cep;
    private String logradouro;
    private String bairro;
    private String cidade;
    private String uf;

    public Cliente(int idCliente, String nome, String cpf, String telefone, String email, String numeroCasa, String complemento, String dataNascimento, boolean sexo, String cep, String logradouro, String bairro, String cidade, String uf) {
        this.idCliente = idCliente;
        this.nome = nome;
        this.cpf = cpf;
        this.telefone = telefone;
        this.email = email;
        this.numeroCasa = numeroCasa;
        this.complemento = complemento;
        this.dataNascimento = dataNascimento;
        this.sexo = sexo;
        this.cep = cep;
        this.logradouro = logradouro;
        this.bairro = bairro;
        this.cidade = cidade;
        this.uf = uf;
    }
    
    
    
//    
//    public Cliente(int idCliente, String nome, String cpf, String estado, String data, boolean sexo, String email, String cep, String logradouro, String numeroCasa, String cidade, String bairro, String complemento, String telefone) {
//        this.idCliente = idCliente;
//        this.nome = nome;
//        this.cpf = cpf;
//        this.telefone = telefone;
//        this.email = email;
//        this.numeroCasa = numeroCasa;
//        this.complemento = complemento;
//        this.dataNascimento = dataNascimento;
//        this.sexo = sexo;
//         this.cep = cep;
//        this.logradouro = logradouro;
//        this.bairro = bairro;
//        this.cidade = cidade;
//        this.uf = uf;
//    }
    
    public static List<Cliente> obterClientes() throws ClassNotFoundException, SQLException{
        return ClienteDAO.obterClientes();
    }

    public static Cliente obterCliente(int idCliente) throws ClassNotFoundException, SQLException{
        return ClienteDAO.obterCliente(idCliente);
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
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

    public String getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(String dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public boolean getSexo() {
        return sexo;
    }

    public void setSexo(boolean sexo) {
        this.sexo = sexo;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }    

    public void gravar() throws SQLException, ClassNotFoundException{
        ClienteDAO.gravar(this);
    }
    
    public void excluir() throws SQLException, ClassNotFoundException{
        ClienteDAO.excluir(this);
    }
     public void alterar() throws SQLException, ClassNotFoundException{
        ClienteDAO.alterar(this);
    }
    
}
