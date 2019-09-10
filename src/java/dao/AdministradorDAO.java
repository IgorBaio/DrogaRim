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

/**
 *
 * @author Igori
 */
public class AdministradorDAO {
    public static List<ADM> obterADMs() throws ClassNoteFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<ADM> ADMs = new ArrayList<ADM>();
        ADM adm = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from adm");
            while(rs.next()){
                adm = instanciarAdm(rs);
                ADMs.add(adm);
            }
        }  finally{
                   DAO.fecharConexao(conexao, comando); 
                    }
        return ADMs;
    }
    
    //public static Adm instanciarAdm(ResultSet rs)throws 
    
    
}
