<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta content="text/html">
        <link rel="stylesheet" href="style.css">
        <title>Cadastrar produto - ${operacao}</title>
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
                            <a href="PesquisaProdutoController"  class="paginaSelecionada">Produto</a>
                        </td>
                        <td>
                            <a href="PesquisaEstoqueController">Estoque</a>
                        </td>
                        <td>
                            <a href="PesquisaClienteController">Cliente</a>
                        </td>
                        <td>
                            <a href="PesquisaFuncionarioController">Funcion�rio</a>
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
                        <a href="PesquisaProdutoController">
                            Produtos
                        </a>
                    </td>
                    <td>
                        <a href="ManterProdutoController?acao=prepararOperacao&operacao=Incluir" class="paginaSelecionada">
                            Cadastrar Produto
                        </a>
                    </td>
                </tr>
            </table>

        </div>
        <section>
            <div id="cadastrarProduto">
                <form action="ManterProdutoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterProduto">
                    <table>
                        <!--  <tr>
                          <input type="radio" name="medicamento" id='produto' value="ProdutoSimples" />Produtos Simples
                          <input type="radio" name="medicamento" id='produto' value="Medicamento" />Medicamentos
                          </tr> -->
                        <tr>
                            <td><label for="idProduto">C�digo</label></td>
                            <td> <input type="text" name="txtIdProduto" id="idProduto" value="${produto.idProduto}"/></td>
                        </tr>
                        <tr>
                            <td><label for="nomeComercial">Nome Comercial</label></td>
                            <td><input type="text" name="txtNomeComercial" id="nomeComercial" value="${produto.nome}"/></td>
                        </tr>
                        <tr>
                            <td><label for="nomeFarmaco">Nome F�rmaco</label></td>
                            <td><input type="text" name="txtNomeFarmaco" id="nomeFarmaco" value="${produto.nomeFarmaco}"/></td>
                        </tr>
                        <tr>
                            <td><label for="precoProduto">Pre�o</label></td>
                            <td><input type="text" name="txtPrecoProduto" id="precoProduto" value="${produto.preco}"/></td>
                        </tr>
                        <tr>
                            <td><label for="categoria">Categoria</label></td>
                            <td><input type="text" name="txtCategoria" id="categoria" value="${produto.categoria}"/></td>
                        </tr>
                        <tr>
                            <td><label for="tipo">Tipo</label></td>
                            <td><input type="text" name="txtTipo" id="tipo" value="${produto.tipo}"/></td>
                        </tr>
                        <tr>
                            <td><label for="receita">Receita</label></td>
                            <td><input type="text" name="txtReceita" id="receita" value="${produto.receita}"/></td>
                        </tr>
                        <tr>
                            <td><label for="receita">Medicamento</label></td>
                            <td><input type="text" name="txtMedicamento" id="medicamento" value="${produto.medicamento}"/></td>
                        </tr>
                        <tr>
                            <td><label for="lote">Lote</label></td>
                            <td><input type="text" name="txtLote" id="lote" value="${produto.lote}"/></td>
                        </tr>

                        <!--          
                          <td>
                              <select name="optTipoReceita" id="receita">
                                  <option value="Nenhuma" selected>Nenhuma </option>
                                  <option value="Retida"<c:if test="${Produto.tipoReceita == 'Retida'}"> selected </c:if>> Retida </option>
                                  <option value="Azul"<c:if test="${Produto.tipoReceita == 'Retida'}"> selected </c:if>> Azul </option>
                              </select>
                              <select name="optTipoMedicamento">
                                  <option value="Tipo1" <c:if test="${Produto.tipoMedicamento == 'Tipo1'}"> selected </c:if>> Tipo1 </option>
                                  <option value="Tipo2" <c:if test="${Produto.tipoMedicamento == 'Tipo2'}"> selected </c:if>> Tipo2 </option>
                              </select>
                          </td>
                          </tr>
                          <tr>
                              <td>
                                  <label for="observacao">Observa��o:</label>
                              </td>
                              <td>
                                  <input type="text" name="observacao" id="observacao" />
                              </td>
                          </tr> -->

                    </table>
                    <p><input type="submit" value="Incluir" name="btnIncluir">
                        <input type="submit" value="Limpar">
                        <input type="submit" value="Excluir" name="btnExcluir">
                    </p>
                </form>
            </div>
        </section>
    </body>
</html>
