

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DrogaRIM</title>
    </head>
    <body>
        <div id="head2">
       
        <form>
         <table>
             <tr>
                 <input type="radio" name="produto" id='produto' value="ProdutoSimples"/>Produtos Simples
              <input type="radio" name="produto" id='produto' value="Medicamento"/>Medicamentos
             </tr>
                <tr>
                    <td>
                        <label for="nomeComercial">Nome Comercial:</label> 
                    </td>
                    <td>
                        <input type="text" name="nomeComercial" id="nomeComercial" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="principioAtivo">Nome Genérico/Princípio Ativo</label> 
                    </td>
                    <td>
                        <input type="text" name="principioAtivo" id="principioAtivo" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="fabricante" >Fabricante:</label> 
                    </td>
                    <td>
                        <input type="text" name="fabricante" id="fabricante" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="tipoMedicamento" >Tipo de Medicamento:</label> 
                    </td>
                    <td>
                        <input type="text" name="tipoMedicamento" id="tipoMedicamento" />
                    </td>   
                </tr>
                <tr>
                    <td>
                        <label for="quantidade">Quantidade:</label> 
                    </td>
                    <td>
                        <input type="text" name="quantidade" id="quantidade" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="formulacao" >Formulação</label> 
                    </td>
                    <td>
                        <input type="text" name="formulacao" id="formulacao" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="registroMinisterioSaude" >Registro Ministério da Saúde:</label> 
                    </td>
                    <td>
                        <input type="text" name="registroMinisterioSaude" id="registroMinisterioSaude" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        <label for="categoria">Categoria:</label> 
                    </td>
                    <td>
                        <input type="text" name="categoria" id="categoria" />
                    </td>
                <tr>
                    <td>
                        <label for="receita">Receita:</label> 
                    </td>
                    <td>
                        <select name="receita" id="receita">
                              <option value="Nenhuma" selected>Nenhuma
                              <option value="Retida" >Retida
                              <option value="Azul" >Azul
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="observacao">Observação:</label> 
                    </td>
                    <td>
                        <input type="text" name="observacao" id="observacao" />
                    </td>
                </tr>
             </table>
             <p><input type="submit" value="Confirmar"><input type="reset" value="Retornar"></p>

            </form>
    </body>
</html>
