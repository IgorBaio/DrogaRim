<%-- 
    Document   : cliente
    Created on : 05/09/2019, 09:03:48
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DrogaRIM</title>
    </head>
    <body>
    <div id="head2">
        <table>
            <tr>
                <td>
                    <h2>Cadastrar cliente</h2>
                </td>
                <td>
                    <a href="cadastrarFabricante.jsp"><h2>Cadastrar fabricante</h2></a>
                </td>
                <td>
                    <a href="cadastrarProduto.jsp"><h2>Cadastrar Produto</h2></a>
                </td>
                <td>
                    <a href="cadastrarFuncionario.jsp"><h2>Cadastrar Funcionário</h2></a>
                </td>
                
            </tr>
        </table>
            
            
        </div>
    
    <div id="cadastroCliente">
      <table width="640">
        <tr>
          <td bgcolor="lightblue">Cadastrar</td>
        </tr>
      </table>
      <form method="" action="">
        
        <table>        
          <tr>
            <td>
              <label for="iNome">Nome Completo</label>
            </td>
            <td>
              <input type="text" name="tNome" id="iNome" align="right" size=""/>
            </td>
          </tr>
          
          <tr>
            <td>
              <label for="iCPF">CPF</label>
            </td>
            <td>
              <input type="number" name="tCPF" id="iCPF" maxlength="9"/>
            </td>
          </tr>
          <tr>
            <td>
              <label for='iDataNascimento'>Data Nascimento</label>
            </td>
            <td>
              <input type='date' id='iDataNascimento' name='tDataNascimento'>
            </td>
            <td>
              <label for='iSexo'>Sexo</label>
            </td>
            <td>
              <input type="radio" name="tSexo" id='iSexo' value="Masculino"/>M
              <input type="radio" name="tSexo" id='iSexo' value="Feminimo"/>F
            </td>
          </tr>
          <tr>
            <td>
              <label for="iEmail">E-mail</label>
            </td>
            <td>
              <input type="email" name="tEmail" id="iEmail" maxlength="50"/>
            </td>
          </tr>
          <tr>
            <td>
              <label for="iCEP">CEP</label>
            </td>
            <td>
              <input type="number" name="tCEP" id="iCEP" max="9" maxlength="9"/>
            </td>
            <td>
              <label for="iEstado">Estado</label>
            </td>
            <td>
              <select name="iEstado">
              <option value="Minas Gerais" selected>MG
              <option value="Goiás" >GO
              <option value="Rio de Janeiro">RJ
              <option value="São Paulo">SP
              <option value="Maranhão">MA
              <option value="Espírito Santo">ES
              </select>
            </td>
          </tr>
          <tr>
            <td>
              <label for="iLogradouro">Logradouro</label>
            </td>
            <td>
              <input type="text" name="tlogradouro" id="ilogradouro" maxlength="50"/>
            </td>
            <td>
              <label for="inumero">Nº</label>
            </td>
            <td>
              <input type="number" name="tnumero" id="inumero" max="4"/>
            </td>
          </tr>
          <tr>
            <td>
              <label for="iLogradouro">Bairro</label>
            </td>
            <td>
              <input type="text" name="tlogradouro" id="ilogradouro" maxlength="50"/></td>
          </tr>
          <tr>
            <td>
              <label for="iLogradouro">Cidade</label>
            </td>
            <td>
              <input type="text" name="tlogradouro" id="ilogradouro" maxlength="50"/></td>
          </tr>
          <tr>
            <td>
              <label for="iLogradouro">Complemento</label>
            </td>
            <td>
              <input type="text" name="tlogradouro" id="ilogradouro" maxlength="50"/></td>
          </tr>
          <tr>
            <td>
              <label for="iTelefone">Telefone</label>
            </td>
            <td>
              <input type="number" id="iTelefone" name="tTelefone" max="20"/>
            </td>            
          
          </table>
        <p><input type="reset" value="Cancelar"><input type="submit" value="Cadastrar"></p>
      </form>	
    </div>
    </body>
</html>
