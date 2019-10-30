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
    <form action="ManterEstoqueController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterEstoque">
    
          <table>
              <!--<tr>
                  <input type="radio" name="produto" id='produto' value="ProdutoSimples" />Produtos Simples
                  <input type="radio" name="produto" id='produto' value="Medicamento" />Medicamentos
              </tr>-->
              <tr>
                  <td>Produto Sem forEach</td>
                  
                
                    
                    <td>
                        <select name="optProd" href="ManterProdutoController">
                  <!--  <c:forEach items="${produtos}" var="produto"> -->   
                    
                      <option><c:out value="${produto.idProduto}" /></option>
                    <c:out value="${produto.nome}" />
                    <c:out value="${produto.nomeFarmaco}" />
                    <c:out value="${produto.preco}" />
                    <c:out value="${produto.categoria}" />
                    <c:out value="${produto.tipo}" />  
                    <c:out value="${produto.receita}" />                                  
                    <c:out value="${produto.medicamento}" />  
                    <c:out value="${produto.lote}" />
                    
                    <!-- </c:forEach> -->
                            </select>
                    </td>   
               
              </tr>
                 <tr>
                  <td>Produto Com forEach</td>
                <!-- --> <td>
                      <select name="optProd" href="ManterEstoqueController">
                          <!-- <option value="0" <c:if test="${produto.nome == null}">selected</c:if></option> -->
                          <option value="" selected>teste</option>
                        <c:forEach items="${produtos}" var="produto">
                          <option value="${produto.nome}">${produto.nome}</option>
                        </c:forEach>
                         <!-- <option value="Minas Gerais" <c:if test="${cliente.uf}">  selected</c:if>
                          Minas Gerais</option>   
                      </select> 
-->
                         </td>
                     
              </tr>
          </table>
          <p>
              <p><input type="submit" value="Incluir" name="btnIncluir">
                  <input type="submit" value="Limpar">
                  <input type="submit" value="Excluir" name="btnExcluir"></p>
          </p>
      </form>
    </section>
  </body>
</html>
