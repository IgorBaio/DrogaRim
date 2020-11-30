package model;
import dao.CategoriaDAO;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Categoria implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idCategoria;
    private String nome;

    public Categoria() {};
    
    public Categoria(int idCategoria, String nome) {
        this.idCategoria = idCategoria;
        this.nome = nome;
    }
    
    public static Categoria obterCategoria(int idCategoria) throws ClassNotFoundException, SQLException{
        return CategoriaDAO.obterCategoria(idCategoria);
    }
    
    public static List<Categoria> obterCategorias() throws ClassNotFoundException, SQLException{
        return CategoriaDAO.obterCategorias();
    }

    public Integer getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(Integer idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public void gravar() throws SQLException, ClassNotFoundException{
        CategoriaDAO.gravar(this);
    }
        public void excluir() throws SQLException, ClassNotFoundException{
        CategoriaDAO.excluir(this);
    }
         public void alterar() throws SQLException, ClassNotFoundException{
        CategoriaDAO.gravar(this);
    }
        
        
}

