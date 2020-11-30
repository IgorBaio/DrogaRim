package model;

import dao.EnderecoDAO;
import java.sql.SQLException;
import java.util.List;

public class Endereco {
    private int id;
    private String cep;
    private String logradouro;
    private String bairro;
    private String cidade;
    private String uf;
    

    public Endereco(int id, String cep, String logradouro, String bairro, String cidade, String uf) {
        this.id = id;
        this.cep = cep;
        this.logradouro = logradouro;
        this.bairro = bairro;
        this.cidade = cidade;
        this.uf = uf;
        
    }
    
    public Endereco( String cep, String logradouro, String bairro, String cidade, String uf) {
        this.cep = cep;
        this.logradouro = logradouro;
        this.bairro = bairro;
        this.cidade = cidade;
        this.uf = uf;
       
    }

   

     public static Endereco obterEndereco(int idEndereco) throws ClassNotFoundException, SQLException{
        return EnderecoDAO.obterEndereco(idEndereco);
    }
    
    public static List<Endereco> obterEnderecos() throws ClassNotFoundException, SQLException{
        return EnderecoDAO.obterEnderecos();
    }

        
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
        EnderecoDAO.gravar(this);
    }
}
