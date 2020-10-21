package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class BD {
    public static Connection getConexao() 
        throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        Class.forName("com.mysql.jdbc.Driver");
        conexao = DriverManager.getConnection("jdbc:mysql://localhost:3306/drogarimfull?zeroDateTimeBehavior=convertToNull","root","");
        return conexao;
    
    }
        public static void fecharConexao(Connection conexao, Statement comando)
            throws SQLException {
        if (comando != null) {
            comando.close();
        }
        if (conexao != null) {
            conexao.close();
        }
    }
}
