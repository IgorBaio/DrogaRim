/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.FabricanteDAO;
import java.sql.SQLException;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Fabricante {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idFabricante;
    private String nome;

    public Fabricante() {
    }

    public Fabricante(int idFabricante, String nome) {
        this.idFabricante = idFabricante;
        this.nome = nome;
    }

    public static Fabricante obterFabricante(Integer idFabricante) throws ClassNotFoundException, SQLException {
        return FabricanteDAO.obterFabricante(idFabricante);
    }

    public static List<Fabricante> obterFabricantes() throws ClassNotFoundException, SQLException {
        return FabricanteDAO.obterFabricantes();
    }

    public Integer getIdFabricante() {
        return idFabricante;
    }

    public void setIdFabricante(int idFabricante) {
        this.idFabricante = idFabricante;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void gravar() throws SQLException, ClassNotFoundException {
        FabricanteDAO.gravar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException {
        FabricanteDAO.excluir(this);
    }

    public void alterar() throws SQLException, ClassNotFoundException {
        FabricanteDAO.alterar(this);
    }

}
