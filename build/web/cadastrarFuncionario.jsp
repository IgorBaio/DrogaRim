<%-- 
    Document   : cadastrarFuncionario
    Created on : 05/09/2019, 09:11:15
    Author     : Rosana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Funcionário</title>
    </head>
    <body>
        <div id="head2">
        <table>
            <tr>
                <td>
                    <a href="cadastrarCliente.jsp"><h2>Cadastrar Cliente</h2></a>
                </td>
                <td>
                    <a href="cadastrarFabricante.jsp"><h2>Cadastrar Fabricante</h2></a>
                </td>
                <td>
                    <a href="cadastrarProduto.jsp"><h2>Cadastrar Produto</h2></a>
                </td>
                <td>
                    <h2>Cadastrar Funcionário</h2>
                </td>
            </tr>
        </table>
    <form>
        <table>
            <tr>
                <td>
                    <select>
                        <option value="funcao">Função</option>
                    </select>
                </td>
                <td>
                    <select>
                        <option value="situacao">Situação</option>
                    </select>
                </td>
            </tr>
    <tr>
        <td>
            <label for="nome">Nome </label>
        </td>
        <td>
            <input type="text" id="nomeFuncionario">
        </td>
    </tr>
    <tr>
        <td>
            <label for="cpf">CPF </label>
        </td>
        <td>
            <input type="text" id="cpfFuncionario">
        </td>
    </tr>
    <tr>
        <td>
            <label for="dataNascimento">Data de Nascimento</label>
        </td>
        <td>
            <input type="date" value="data" id="data">
        </td>
    </tr>
    <tr>
        <td>
            <label for="sexo">Sexo </label>
        </td>
        <td>
            <select>
                <option value="F">Feminino</option>
                <option values="M">Masculino</option>
            </select>
        </td>
    </tr>
    <tr>
        <td>
            <label for="email">Email </label>
        </td>
        <td>
            <input type="text" id="email">
        </td>
    </tr>
    <tr>
        <td>
            <label for="telefone">Telefone</label>
        </td>
        <td>
            <input type="text" id="telefone">
        </td>
    </tr>
    <tr>
        <td>
            <label for="cpf">CPF </label>
        </td>
        <td>
            <input type="text" id="cfp">
        </td>
    </tr>
    <tr>
        <td>
            <label for="complemento">Complemento </label>
        </td>
        <td>
            <input type="text" id="complemento">
        </td>
    </tr>
    <tr>
        <td>
            <label for="logradouro">Logradouro</label>
        </td>
        <td>
            <input type="text" id="logradouro">
        </td>
    </tr>
    <tr>
        <td>
            <label for="numeto">Número</label>
        </td>
        <td>
            <input type="number" id="numero">
        </td>
    </tr>
    <tr>
        <td>
            <label for="bairro">Bairro</label>
        </td>
        <td>
            <input type="text" id="bairro">
        </td>
    </tr>
    <tr>
        <td>
            <label for="cidade">Cidade</label>
        </td>
        <td>
            <input type="text" id="cidade">
        </td>
    </tr>
    <tr>
        <td>
            <label for="uf">UF</label>
        </td>
        <td>
            <input type="text" id="uf">
        </td>
    </tr>
    <tr>
        <td>
            <label for="login">Login</label>
        </td>
        <td>
            <input type="text" id="login">
        </td>
    </tr>
    
   <tr>
        <td>
            <label for="senha">Senha</label>
        </td>
        <td>
            <input type="password" id="senha">
        </td>
    </tr>
    </table>
    <input type="submit" value="confrimar">
    <input type="submit" value="Limpar">       
    </form>
    </body>
</html>
