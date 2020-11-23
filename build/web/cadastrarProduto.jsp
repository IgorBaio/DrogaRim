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
        <title>Cadastrar produto - ${operacao} - ${produto.idProduto}</title>
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
                            <a href="PesquisaProdutoController"  class="paginaSelecionada">Produto</a>
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
                        <a href="PesquisaProdutoController">
                            Produtos
                        </a>
                    </td>

                    <td>
                        <a href="ManterProdutoController?acao=prepararOperacao&operacao=Incluir" class="paginaSelecionada">
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
                </tr>
            </table>
        </div>

        <section>
            <div id="cadastrarProduto">
                <form action="ManterProdutoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterProduto" onsubmit="return validarFormulario(this)">
                    <table>
                            <tr>
                                <td><label for="idProduto"<c:if test="${operacao == 'Incluir'}"> style="display: none;"</c:if>>Código</label></td>
                                <td> <input name="txtIdProduto" id="idProduto" <c:if test="${operacao == 'Incluir'}"> value='0' type='hidden'</c:if> <c:if test="${operacao != 'Incluir'}"> value="${produto.idProduto}" type="number"  </c:if> readonly/></td>
                            </tr>
                            <tr>
                                <td><label for="nomeComercial">Nome Comercial</label></td>
                                <td><input type="text" name="txtNomeComercial" id="nomeComercial" value="${produto.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>
                            <tr>
                                <td><label for="nomeFarmaco">Nome Fármaco</label></td>
                                <td><input type="text" name="txtNomeFarmaco" id="nomeFarmaco" value="${produto.nomeFarmaco}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>
                            <tr>
                                <td><label for="precoProduto">Preço</label></td>
                                <td><input type="number" step="0.01" name="txtPrecoProduto" id="precoProduto" value="${produto.preco}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>

                            <tr>
                                <td><label for="tipo">Tipo</label></td>
                                <td><input type="text" name="txtTipo" id="tipo" value="${produto.tipo}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>
                            <tr>
                                <td><label for="receita">Receita</label></td>
                                <td><input type="text" name="txtReceita" id="receita" value="${produto.receita}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>
                            <tr>
                                <td><label for="receita">Medicamento</label></td>
                                <td><input type="text" name="txtMedicamento" id="medicamento" value="${produto.medicamento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>
                            <tr>
                                <td><label for="lote">Lote</label></td>
                                <td><input type="date" name="txtLote" id="lote" value="${produto.lote}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>
                            <tr>
                                <td>Quantidade</td>
                                <td><input type="number" name="txtQuantidade" <c:if test="${operacao != 'Alterar'}">value="0" readonly</c:if>/></td>
                            </tr>
                            <tr>
                                <td><label>Categoria:</label></td>
                                <td><select name="txtIdCategoria" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                    <option value="0" <c:if test="${produto.categoria.idCategoria == null}">selected</c:if>></option>
                                    <c:forEach items="${categorias}" var="categoria">
                                        <option value="${categoria.idCategoria}" <c:if test="${produto.categoria.idCategoria == categoria.idCategoria}">selected</c:if>>${categoria.nome}</option>
                                    </c:forEach>
                                </select>
                            </td>
                        </tr>

                        <tr>
                            <td><label>Fabricante:</label></td>
                            <td><select name="txtIdFabricante" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                    <option value="0" <c:if test="${produto.fabricante.idFabricante == null}">selected</c:if>></option>
                                    <c:forEach items="${fabricantes}" var="fabricante">
                                        <option value="${fabricante.idFabricante}" <c:if test="${produto.fabricante.idFabricante == fabricante.idFabricante}">selected</c:if>>${fabricante.nome}</option>
                                    </c:forEach>
                                </select>
                            </td>
                        </tr>
                    </table>
                    <p><input type="submit" value="${operacao}" name="btnConfirmar"></p>
                </form>
                <SCRIPT language="JavaScript">


                    function campoNumerico(valor)
                    {
                        var caracteresValidos = "0123456789.-,";
                        var ehNumero = true;
                        var umCaracter;
                        for (i = 0; i < valor.length && ehNumero == true; i++)
                        {
                            umCaracter = valor.charAt(i);
                            if (caracteresValidos.indexOf(umCaracter) == -1)
                            {
                                ehNumero = false;
                            }
                        }
                        return ehNumero;
                    }

                    function validarFormulario(form) {
                        var mensagem;
                        mensagem = "";
//                        if (form.txtIdProduto.value == "") {
//                            mensagem = mensagem + "Informe o Código do Produto\n";
//                        }
                        if (form.txtNomeComercial.value == "") {
                            mensagem = mensagem + "Informe o Nome Comercial do Produto\n";
                        }
                        if (form.txtNomeFarmaco.value == "") {
                            mensagem = mensagem + "Informe a Nome Farmaco do Produto\n";
                        }
                        if (form.txtPrecoProduto.value == "") {
                            mensagem = mensagem + "Informe o Preço do Produto\n";
                        }
                        if (form.txtTipo.value == "") {
                            mensagem = mensagem + "Informe o Tipo do Produto\n";
                        }
                        if (form.txtReceita.value == "") {
                            mensagem = mensagem + "Informe se o Produto possui Receita\n";
                        }
                        if (form.txtMedicamento.value == "") {
                            mensagem = mensagem + "Informe se o Produto é um Medicamento\n";
                        }
                        if (form.txtLote.value == "") {
                            mensagem = mensagem + "Informe o Lote do Produto\n";
                        }
                        if (form.txtIdFabricante.value == "") {
                            mensagem = mensagem + "Informe o Fabricante do Produto\n";
                        }
                        if (form.txtIdCategoria.value == "") {
                            mensagem = mensagem + "Informe a Categoria do Produto\n";
                        }
                        if (!campoNumerico(form.txtIdProduto.value)){
                            mensagem = mensagem + "Código do Produto deve ser numérico\n";
                        }   
                       
                       
                         
                        
                        if (mensagem == "") {
                            return true;
                        } else {
                            alert(mensagem);
                            return false;
                        }
                    }

                </SCRIPT> 
                
            </div>
        </section>
    </body>
</html>
