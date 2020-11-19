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

        <title>Cadastrar venda - ${operacao}</title>
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
                        <a href="ManterVendaController?acao=prepararOperacao&operacao=Incluir&v=0"  class="paginaSelecionada">
                            Nova venda
                        </a>
                    </td>
                </tr>
            </table>
        </div>

        <section>
            <form action="ManterVendaController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterVenda" onsubmit="return validarFormulario(this)">
                <table>
                    <tr>
                        <td><label> Id:</label></td>
                        <td><input type="number" name="txtIdVenda" value="${venda.idVenda}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>    
                            <td><label> Data da venda: </label></td>
                            <td><input type="date" name="txtDataVenda" value="${venda.dataVenda}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td><label> Preço: </label></td>
                            <td><input type="number" step="0.01" name="txtPrecoTotal"  <c:if test="${operacao == 'Alterar'}"> value=${venda.precoTotal} </c:if><c:if test="${operacao != 'Alterar'}"> value = 0 readonly</c:if>></td>
                            <!--<td><input type="number" step="0.01" name="txtPrecoTotal"  <c:if test="${operacao == 'Alterar'}"> value=${venda.getPrecoTotal()} </c:if><c:if test="${operacao != 'Alterar'}"> value = 0 readonly</c:if>></td>-->
                        </tr>
                        <tr>
                            <td><label>Cliente:</label></td>
                            <td><select name="txtIdCliente" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                <option value="0" <c:if test="${venda.cliente.idCliente == null}">selected</c:if>></option>
                                <c:forEach items="${clientes}" var="cliente">
                                    <option value="${cliente.idCliente}" <c:if test="${venda.cliente.idCliente == cliente.idCliente}">selected</c:if>>${cliente.nome}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                            <td><label>Funcionário:</label></td>
                            <td><select name="txtIdFuncionario" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                <option value="0" <c:if test="${venda.funcionario.idFuncionario == null}">selected</c:if>></option>
                                <c:forEach items="${funcionarios}" var="funcionario">
                                    <option value="${funcionario.idFuncionario}" <c:if test="${venda.funcionario.idFuncionario == funcionario.idFuncionario}">selected</c:if>>${funcionario.login}</option>
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
                    var caracteresValidos = "0123456789";
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
//                    if (form.txtIdVenda.value == "") {
//                        mensagem = mensagem + "Informe o Código da Venda\n";
//                    }
                    if (form.txtDataVenda.value == "") {
                        mensagem = mensagem + "Informe a Data da Venda\n";
                    }
                    if (!campoNumerico(form.txtidVenda.value)) {
                        mensagem = mensagem + "Código da Venda deve ser numérico\n";
                    }
                    if (!campoNumerico(form.txtDataVenda.value)) {
                        mensagem = mensagem + "Data da Venda deve ser numérico\n";
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
