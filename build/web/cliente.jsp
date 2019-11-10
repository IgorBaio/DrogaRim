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
        <title>Lista de clientes</title>
    </head>
    <body>
        <header>
            <div class="barralogo">
                <div class="logo"></div>
                <span class="usuario">Vendedor</span>
            </div>
            <nav>
                <hr id="hr1">
                <table>
                    <tr>
                        <td>
                            <a href="PesquisaVendaController">Venda</a>
                        </td>

                        <td>
                            <a href="PesquisaProdutoController">Produto</a>
                        </td>

                        <td>
                            <a href="PesquisaClienteController"  class="paginaSelecionada">Cliente</a>
                        </td>

                        <td>
                            <a href="PesquisaFuncionarioController">Funcionário</a>
                        </td>

                        <td>
                            <a href="PesquisaFabricanteController">Fabricante</a>
                        </td>
                    </tr>
                </table>
            </nav>
            <hr>
        </header>

        <div class="subnav">
            <table>
                <tr>
                    <td>
                        <a href="PesquisaClienteController" class="paginaSelecionada">
                            Clientes
                        </a>
                    </td>

                    <td>
                        <a href="ManterClienteController?acao=prepararOperacao&operacao=Incluir">
                            Cadastrar Cliente
                        </a>
                    </td>
                </tr>
            </table>
        </div>

        <!--<form action="ManterClienteController?acao=prepararOperacao&operacao=Incluir"
              method="post">
            <input type="submit" name="btnIncluir" value="Incluir"> -->
    </form>

    <section>
        <div id="secaoCliente">
            <div id="buscaCliente">
                <input type="text" id="textoBusca" placeholder="Pesquisar"/>
                <button id="botaoBusca">Buscar</button>
                <hr>
            </div>
            <div id="filtroCliente">
                Filtros
            </div>
            <div class="listaCliente">
                Resultados
                <table>
                    <tr>
                        <td>Código</td>
                        <td>Nome</td>
                        <!--      <td>CPF</td>
                              <td>Telefone</td>
                              <td>E-mail</td>
                              <td>Nº Casa</td>
                              <td>Complemento</td>
                              <td>DT_Nasc</td>
                              <td>Sexo</td>
                              <td>CEP</td>
                              <td>Logradouro</td>
                              <td>Bairro</td>
                              <td>Cidade</td>
                              <td>UF</td>-->
                        <td>Ação</td>


                    </tr>
                    <c:forEach items="${clientes}" var="cliente">
                        <tr>
                            <td><c:out value="${cliente.idCliente}" /></td>
                            <td><c:out value="${cliente.nome}" /></td>
                    <!--        <td><c:out value="${cliente.cpf}" /></td>
                            <td><c:out value="${cliente.telefone}" /></td>
                            <td><c:out value="${cliente.email}" /></td>
                            <td><c:out value="${cliente.numeroCasa}" /></td>
                            <td><c:out value="${cliente.complemento}" /></td>
                            <td><c:out value="${cliente.dataNascimento}" /></td>
                            <td><c:out value="${cliente.sexo}" /></td>
                            <td><c:out value="${cliente.cep}" /></td>
                            <td><c:out value="${cliente.logradouro}" /></td>
                            <td><c:out value="${cliente.bairro}" /></td>
                            <td><c:out value="${cliente.cidade}" /></td>
                            <td><c:out value="${cliente.uf}" /></td>
                            -->     
                            <td><a href="ManterClienteController?acao=prepararOperacao&operacao=Excluir&idCliente=<c:out value="${cliente.idCliente}"/>">Excluir</a></td>
                            <td><a href="ManterClienteController?acao=prepararOperacao&operacao=Alterar&idCliente=<c:out value="${cliente.idCliente}"/>">Alterar</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </section>
</body>
</html>
