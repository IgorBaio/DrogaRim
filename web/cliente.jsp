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
                      <a href="PesquisaEstoqueController">Estoque</a>
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
        <div id="listaCliente">
          Resultados
          <table>
             <c:forEach items="${clientes}" var="cliente">
                <tr>
                    <td><c:out value="${cliente.idCliente}" /></td>
                    <td><c:out value="${cliente.nome}" /></td>    
                </tr>
                 </c:forEach>
          </table>
        </div>
      </div>
    </section>
  </body>
</html>
