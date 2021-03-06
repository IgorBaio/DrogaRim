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
        <title>Lista de produtos</title>
    </head>
    <script>
        async function ControllerFabricante(){
            let response = await fetch('http://localhost:8084/DrogaRIM/ManterProdutoController?acao=prepararOperacao&operacao=Incluir');
            let body = await response.json();
            console.log(body);
   
        }
    </script>
    <body onload="ControllerFabricante">
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
                            <a href="PesquisaProdutoController" class="paginaSelecionada">Produto</a>
                        </td>

                        <td>
                            <a href="PesquisaClienteController">Cliente</a>
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
            <hr id="hr2">
        </header>

        <div class="subnav">
            <table>
                <tr>
                    <td>
                        <a href="PesquisaProdutoController" class="paginaSelecionada">
                            Produtos
                        </a>
                    </td>

                    <td>
                        <a href="ManterProdutoController?acao=prepararOperacao&operacao=Incluir">
                            Cadastrar Produto
                        </a>
                    </td>
                    
                    <td>
                        <a href="PesquisaCategoriaController">
                            Categorias
                        </a>
                    </td>
                    
                    <td>
                        <a href="ManterCategoriaController?acao=prepararOperacao&operacao=Incluir">
                            Cadastrar Categoria
                        </a>
                    </td>
                       
                    <td>
                        <form action="RelatorioProdutoController" method="post" name="frmManterProduto" onsubmit="return validarFormulario(this)">
                            <label>Relatório por Fabricante:</label>
                            <select name="txtCodFabricante">
                                    <option value="0" <c:if test="${produto.fabricante.idFabricante == null}">selected</c:if>></option>
                                    <c:forEach items="${fabricantes}" var="fabricante">
                                        <option value="${fabricante.idFabricante}" <c:if test="${produto.fabricante.idFabricante == fabricante.idFabricante}">selected</c:if>>${fabricante.nome}</option>
                                    </c:forEach>
                            </select>
                            <input type="submit"/>
                        </form>
                    </td>
                </tr>
            </table>
        </div>

        <section>
            <div id="secaoProduto">
                <div id="buscaProduto">
                    <input type="text" id="textoBusca" placeholder="Pesquisar"/>
                    <button id="botaoBusca">Buscar</button>
                    <hr>
                </div>
                <div id="filtroProduto">
                    Filtros
                </div>
                <div class="listaProduto">
                    Resultados
                    <table>
                        <tr>
                            <td>Código</td>
                            <td>Nome</td>
                            <td>Nome Fármaco</td>
                            <td>Preço</td>
                            <td>Categoria</td>
                            <td>Tipo</td>
                            <td>Receita</td>
                            <td>Medicamento</td>
                            <td>Lote</td>
                            <td>Quantidade</td>
                            <td>Fabricante</td>

                            <td colspan="2">Ação</td>

                        </tr>
                        <c:forEach items="${produtos}" var="produto">
                            <tr>
                                <td><c:out value="${produto.idProduto}" /></td>
                                <td><c:out value="${produto.nome}" /></td>  
                                <td><c:out value="${produto.nomeFarmaco}" /></td>
                                <td><c:out value="${produto.preco}" /></td>  
                                <td><c:out value="${produto.categoria.nome}" /></td>  
                                <td><c:out value="${produto.tipo}" /></td>  
                                <td><c:out value="${produto.receita}" /></td>                                  
                                <td><c:out value="${produto.medicamento}" /></td>  
                                <td><c:out value="${produto.lote}" /></td>
                                <td><c:out value="${produto.quantidade}" /></td> 
                                <td><c:out value="${produto.fabricante.nome}" /></td>

                                <td><a href="ManterProdutoController?acao=prepararOperacao&operacao=Excluir&idProduto=<c:out value="${produto.idProduto}"/>">Excluir</a></td>
                                <td><a href="ManterProdutoController?acao=prepararOperacao&operacao=Alterar&idProduto=<c:out value="${produto.idProduto}"/>">Alterar</a></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
        </section>
    </body>
</html>
