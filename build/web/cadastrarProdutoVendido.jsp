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

        <title>Add item ao carrinho ${venda.idVenda} ${operacao}</title>
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
                            <a href="PesquisaVendaController"  class="paginaSelecionada">Venda</a>
                        </td>

                        <td>
                            <a href="PesquisaProdutoController">Produto</a>
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
                        <a href="PesquisaVendaController">
                            Vendas
                        </a>
                    </td>

                    <td>
                        <a href="ManterVendaController?acao=prepararOperacao&operacao=Incluir"  class="paginaSelecionada">
                            Nova venda
                        </a>
                    </td>
                </tr>
            </table>
        </div>

        <section>
            <form action="ManterProdutoVendidoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterProdutoVendido" onsubmit="return validarFormulario(this)">
                <table>

                    <tr>
                        <td><label>Id:</label></td>
                        <td><input type="number" name="txtIdProdutoVendido" value="${produtoVendido.idProdutoVendido}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                        </tr>


                        <tr>
                            <td><label>Produto:</label></td>
                            <td><select name="txtIdProduto" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                <option value="0" <c:if test="${produtoVendido.produto.idProduto == null}">selected</c:if>></option>
                                <c:forEach items="${produtos}" var="produto">
                                    <option value="${produto.idProduto}" <c:if test="${produtoVendido.produto.idProduto == produto.idProduto}">selected</c:if>>${produto.nome} - ${produto.preco} </option>

                                </c:forEach>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label> Desconto R$: </label></td>
                            <td><input type="number" name="txtPreco" value="${produtoVendido.preco}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>

                    <tr>
                        <td><label>Venda:</label></td>
                        <td><select name="txtIdVenda" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                <option value="${venda.idVenda}" <c:if test="${produtoVendido.venda.idVenda == null}">selected</c:if>>${venda.idVenda}</option>
                                <c:forEach items="${vendas}" var="venda">
                                    <option value="${venda.idVenda}" <c:if test="${produtoVendido.venda.idVenda == venda.idVenda}">selected</c:if>>${venda.idVenda} </option>
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
                        var caracteresValidos = "0123456789.-";
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
                        if (form.txtIdProdutoVendido.value == "") {
                            mensagem = mensagem + "Informe o Código do Produto Vendido\n";
                        }
                        if (form.txtPreco.value == "") {
                            mensagem = mensagem + "Informe o Preço do Produto Vendido\n";
                        }
                        if (form.txtIdProduto.value == "") {
                            mensagem = mensagem + "Informe o Código do Produto\n";
                        }
                        if (form.txtIdVenda.value == "") {
                            mensagem = mensagem + "Informe o Código da Venda\n";
                        }
                        if (!campoNumerico(form.txtIdProdutoVendido.value)){
                            mensagem = mensagem + "Código do Produto Vendidodeve ser numérico\n";
                        }   
                        if (!campoNumerico(form.txtPreco.value)){
                            mensagem = mensagem + "Preço do Produto Vendido deve ser numérico\n";
                        }   
                        if (!campoNumerico(form.txtIdProduto.value)){
                            mensagem = mensagem + "Código do Produto deve ser numérico\n";
                        }   
                        if (!campoNumerico(form.txtIdVenda.value)){
                            mensagem = mensagem + "Código da Venda deve ser numérico\n";
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
