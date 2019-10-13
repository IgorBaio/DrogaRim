<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta content="text/html">
    <link rel="stylesheet" href="style.css">
    <title>Lista de fabricantes</title>
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
                      <a href="PesquisaClienteController">Cliente</a>
                  </td>

                  <td>
                      <a href="PesquisaFuncionarioController">Funcionário</a>
                  </td>

                  <td>
                      <a href="PesquisaFabricanteController"  class="paginaSelecionada">Fabricante</a>
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
                  <a href="PesquisaFabricanteController" class="paginaSelecionada">
                      Fabricante
                  </a>
              </td>
              <td>
                  <a href="ManterFabricanteController?acao=prepararOperacao&operacao=Incluir">
                      Cadastrar Fabricante
                  </a>
              </td>
          </tr>
      </table>
    </div>

    <section>
      <div id="secaoFabricante">
        <div id="buscaFabricante">
          <input type="text" id="textoBusca" placeholder="Pesquisar"/>
          <button id="botaoBusca">Buscar</button>
          <hr>
        </div>
        <div id="filtroFabricante">
          Filtros
        </div>
        <div id="listaFabricante">
          Resultados
          <table>
             <c:forEach items="${fabricantes}" var="fabricante">
                <tr>
                    <td><c:out value="${fabricante.id}" /></td>
                    <td><c:out value="${fabricante.nome}" /></td>    
                </tr>
                 </c:forEach>
          </table>
        </div>
      </div>
    </section>
  </body>
</html>
