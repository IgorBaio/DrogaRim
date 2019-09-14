<%-- 
    Document   : funcionario
    Created on : 10/09/2019, 11:38:40
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Funcionario</title>
    </head>
    <body>
        <header>
            <table>
                <tr>
                    <td>
                        <a href="produto.jsp">Produto</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="index.jsp">Venda</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="estoque.jsp">Estoque</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="cliente.jsp">Cliente</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="funcionario.jsp" class="paginaSelecionada">Funcionário</a>
                    </td>
                </tr>
            </table>

        </header>
        <table>
            <tr>
                <td>
                    <a href="funcionario.jsp" class="paginaSelecionada"><h2>Funcionário</h2></a>
                </td>
                <td>
                    <a href="cadastrarFuncionario.jsp"><h2>Cadastrar Funcionário</h2></a>
                </td>
            </tr>
        </table>
    </body>
</html>
