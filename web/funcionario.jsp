<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta content="text/html">
        <link rel="stylesheet" href="style.css">
        <title>Lista de funcionários</title>
    </head>
    <body>
         <header>
            <a class="barralogo"  href=index.jsp><img src=logoDrogarim.png alt=Drogarim width="25%"/></a>
                <span class="usuario">Vendedor</span>
            <nav>
                <hr>
                <table>
                    <tr>
                        <td>
                            <a href="PesquisaVendaController">Venda</a>
                        </td>

                        <td>
                            <a href="PesquisaProdutoController">Produto</a>
                        </td>

                        <td>
                            <a href="PesquisaClienteController">Cliente</a>
                        </td>

                        <td>
                            <a href="PesquisaFuncionarioController"  class="paginaSelecionada">Funcionário</a>
                        </td>

                        <td>
                            <a href="PesquisaFabricanteController">Fabricante</a>
                        </td>
                    </tr>
                </table>
            </nav>
            <hr id="hr2">
        </header>

        <div class="subnav">
            <table>
                <tr>
                    <td>
                        <a href="PesquisaFuncionarioController" class="paginaSelecionada">
                            Funcionários
                        </a>
                    </td>

                    <td>
                        <a href="ManterFuncionarioController?acao=prepararOperacao&operacao=Incluir">
                            Cadastrar Funcionário
                        </a>
                    </td>
                </tr>
            </table>

        </div>
        
        <section>
            <div id="secaoFuncionario">
                <div id="buscaFuncionario">
                    <input type="text" id="textoBusca" placeholder="Pesquisar"/>
                    <button id="botaoBusca">Buscar</button>
                    <hr>
                </div>
                <div id="filtroFuncionario">
                    Filtros
                </div>
                <div class="listaFuncionario">
                    Resultados
                    <table>
                        <tr>
                            <td>Código</td>
                            <td>Função</td>
                            <td>Login</td>
                            <td>Senha</td>
                            <td>Ação</td>                   
                        </tr>
                        <c:forEach items="${funcionarios}" var="funcionario">
                            <tr>
                                <td><c:out value="${funcionario.idFuncionario}" /></td>
                                <td><c:out value="${funcionario.funcao}" /></td>
                                <td><c:out value="${funcionario.login}" /></td>
                                <td><c:out value="${funcionario.senha}" /></td>    
                                <td><a href="ManterFuncionarioController?acao=prepararOperacao&operacao=Excluir&idFuncionario=<c:out value="${funcionario.idFuncionario}" />">Excluir</a></td>
                                <td><a href="ManterFuncionarioController?acao=prepararOperacao&operacao=Alterar&idFuncionario=<c:out value="${funcionario.idFuncionario}"/>">Alterar</a></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </section>
    </body>
</html>
