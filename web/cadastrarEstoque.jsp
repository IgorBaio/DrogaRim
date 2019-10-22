<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta content="text/html">
    <link rel="stylesheet" href="style.css">

    <title>Cadastrar estoque - ${operacao}</title>
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
                      <a href="PesquisaEstoqueController"  class="paginaSelecionada">Estoque</a>
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
          <hr>
        </header>

        <div class="subnav">
          <table>
              <tr>
                  <td>
                      <a href="PesquisaEstoqueController">
                          Estoque
                      </a>
                  </td>

                  <td>
                      <a href="ManterEstoqueController?acao=prepararOperacao&operacao=Incluir" class="paginaSelecionada">
                          Incluir Produto
                      </a>
                  </td>
              </tr>
          </table>
        </div>

  <section>
    <div id="cadastrarEstoque">
      <form>
          <table>
              <tr>
                  <input type="radio" name="produto" id='produto' value="ProdutoSimples" />Produtos Simples
                  <input type="radio" name="produto" id='produto' value="Medicamento" />Medicamentos
              </tr>
              <tr>
                  <td>Produto</td>
                <!--  <c:forEach items="${produtos}" var="produto">
                <tr>
                    <td><c:out value="${produto.idProduto}" /></td>
                    <td><c:out value="${produto.nome}" /></td>  
                    <td><c:out value="${produto.nomeFarmaco}" /></td>
                    <td><c:out value="${produto.preco}" /></td>  
                    <td><c:out value="${produto.categoria}" /></td>  
                    <td><c:out value="${produto.tipo}" /></td>  
                    <td><c:out value="${produto.receita}" /></td>                                  
                    <td><c:out value="${produto.medicamento}" /></td>  
                    <td><c:out value="${produto.lote}" /></td>    
                </tr>
                 </c:forEach>-->
                  <td>
                      <select name="optProd">
                          <!--<option value="0" <c:if test="${produto.nome == null}">selected</c:if></option> -->
                        <c:forEach items="${produtos}" var="produto">
                          <option value="${produto.nome}" <c:if test="${produto.nome == produto.nome}">
                                  selected</c:if> >${produto.nome}</option>
                        </c:forEach>
                         <!-- <option value="Minas Gerais" <c:if test="${cliente.uf}">  selected</c:if>
                          Minas Gerais</option>  -->
                      </select>
                  </td>
                     
              </tr>
          </table>
          <p>
              <p><input type="submit" value="Incluir" name="btnIncluir">
                        <input type="submit" value="Limpar"></p>
          </p>
      </form>
    </section>
  </body>
</html>
