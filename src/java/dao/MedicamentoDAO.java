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
import model.Medicamento;
import model.Produto;

/**
 *
 * @author Igori
 */
public class MedicamentoDAO {
    public static List<Medicamento> obterMedicamentos() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Medicamento> medicamentos = new ArrayList<Medicamento>();
        Medicamento medicamento = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from medicamento");
            while(rs.next()){
                medicamento = (Medicamento) ProdutoDAO.instanciarProduto(rs);
                medicamentos.add(medicamento);
            }
        }  finally{
                   DAO.fecharConexao(conexao, comando); 
                    }
        return medicamentos;
    }
    
    public static Medicamento instanciarMedicamento(ResultSet rs)throws SQLException{
        Produto produto = new Medicamento(
                rs.getInt("ID"),
                rs.getString("NOME"),
                rs.getFloat("PRECO"),
                rs.getString("LOTE"),
                rs.getString("CATEGORIA"),
                rs.getString("TIPO"),
                rs.getBoolean("RECEITA"),
                rs.getString("CONTRAINDICACOES"),
                rs.getString("NOME_FARMACO"),
                null
        );
        produto.setChaveEstoque(rs.getInt("ESTOQUE_ID"));
        return produto;
    
    
    }

}
