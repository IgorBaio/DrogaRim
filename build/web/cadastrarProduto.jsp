<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta content="text/html">
        <link rel="stylesheet" href="style.css">
        <title>Cadastrar produto</title>
    </head>

    <body>
        <header>
            <div class="barralogo">
                <h1>DROGARIM</h1>
                <span id="usuario">Vendedor</span>
            </div>
            <hr>
            <nav>
                <table>
                    <tr>
                        <td>
                            <a href="index.jsp">Venda</a>
                        </td>

                        <td>
                            <a href="produto.jsp" class="paginaSelecionada">Produto</a>
                        </td>

                        <td>
                            <a href="estoque.jsp">Estoque</a>
                        </td>

                        <td>
                            <a href="cliente.jsp">Cliente</a>
                        </td>

                        <td>
                            <a href="funcionario.jsp">FuncionÃ¡rio</a>
                        </td>

                        <td>
                            <a href="fabricante.jsp">Fabricante</a>
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
                        <a href="produto.jsp">
                            Produtos
                        </a>
                    </td>

                    <td>
                        <a href="cadastrarProduto.jsp" class="paginaSelecionada">
                            Cadastrar Produto
                        </a>
                    </td>
                </tr>
            </table>

        </div>

        <section>
            <div id="cadastrarProduto">
                <form action="ManterProdutoController?acao=confirmarOperacao&operacao=$(operacao)" method="post" name="txtManterProduto">
                    <table>
                        <tr>
                        <input type="radio" name="produto" id='produto' value="ProdutoSimples" />Produtos Simples
                        <input type="radio" name="produto" id='produto' value="Medicamento" />Medicamentos
                        </tr>
                        <tr>
                            <td>
                                <label for="nomeComercial">Nome Comercial:</label>
                            </td>
                            <td>
                                <input type="text" name="txtNomeComercial" id="nomeComercial" value="Produto.nome"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            <td>
                                <label for="idProduto">Id:</label>
                            </td>
                            <td>
                                <input type="text" name="txtIdProduto" id="idProduto" value="Produto.id"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            <td>
                                <label for="loteProduto">Lote:</label>
                            </td>
                            <td>
                                <input type="text" name="txtLoteProdutol" id="loteProduto" value="Produto.lote"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            <td>
                                <label for="nomeComercial">Nome Comercial:</label>
                            </td>
                            <td>
                                <input type="text" name="txtNomeComercial" id="nomeComercial" value="Produto.nome"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <!--         <label for="principioAtivo">Nome Genérico/PrincÃ­pio Ativo</label>
                                     </td>
                                     <td>
                                         <input type="text" name="principioAtivo" id="principioAtivo" />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <label for="fabricante">Fabricante:</label>
                                     </td>
                                     <td>
                                         <input type="text" name="fabricante" id="fabricante" />
                                     </td>
                                 </tr>-->
                                <!--<tr>
<tr>
                    <td>
                        <label for="tipoMedicamento">Tipo de Medicamento:</label>
                    </td>
                    <td>
                        <input type="text" name="tipoMedicamento" id="tipoMedicamento" />
                    </td>
                    <select name="optTipoMedicamento">
                        <option value="Tipo1" <c:if test="${Produto.tipoMedicamento == 'Tipo1'}"> selected </c:if>> Tipo1 </option>
                        <option value="Tipo2" <c:if test="${Produto.tipoMedicamento == 'Tipo2'}"> selected </c:if>> Tipo2 </option>
                    </select>
                <tr>
                    <td>
                        <label for="fabricante">Fabricante:</label>
                    </td>
                    <td>
                         <select name="optFabricante">
                            <option value="0" <c:if test="${fabricante.nome == null}"> selected <c:if>> </option>
                                    <c:forEach items="${fabricantes}" var="fabricante">
                                        <option value="${fabricante.nome} " <c:if test="${fabricante.nome == fabricante.nome}"> selected </c:if>> ${fabricante.nome} </option>
                                    </c:forEach>        
                     </td>
                </tr>
                    <td>
                        <label for="quantidade">Quantidade:</label>
                    </td>
                    <td>
                        <input type="text" name="txtQuantidade" id="quantidade" value="Estoque.quantidade" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="formulacao">Formulação</label>
                    </td>
                    <td>
                        <input type="text" name="txtNomeComercial" id="nomeComercial" value="Produto.nome"/>
                        <input type="text" name="txtFormulacao" id="formulacao" value="Produto.formulacao" />
                    </td>
                </tr>
            
                <tr>
                    <td>
                        <label for="categoria">Categoria:</label>
                    </td>
                    <td>
                        <input type="text" name="categoria" id="categoria" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="receita">Receita:</label>
                    </td>
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
                        <label for="observacao">Observação:</label>
                    </td>
                    <td>
                        <input type="text" name="observacao" id="observacao" />
                    </td>
                </tr> -->

                    </table>
                    <p>
                        <input type="submit" value="Confirmar"><input type="reset" value="Retornar">
                    </p>
                </form>
        </section>
    </body>

</html>
