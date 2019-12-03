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
        <title>Cadastrar cliente - ${operacao}</title>
    </head>
    <body>
        <header>
            <a class="barralogo"  href=index.jsp><img src=logoDrogarim.png alt=Drogarim width="25%"/></a>
            <span class="usuario">Vendedor</span>
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
            <hr id="hr2">
        </header>

        <div class="subnav">

            <table>
                <tr>
                    <td>
                        <a href="PesquisaClienteController">
                            Cliente
                        </a>
                    </td>

                    <td>
                        <a href="cadastrarCliente.jsp" class="paginaSelecionada">
                            Cadastrar Cliente
                        </a>
                    </td>
                </tr>
            </table>
        </div>

        <section>
            <div id="cadastrarProduto">
                <form action="ManterClienteController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterCliente" onsubmit="return validarFormulario(this)">
                    <table>

                        <tr>
                            <td><label for="codigo">Código do cliente</label></td>
                            <td><input type="text" name="txtCodCliente" id="codigo" value="${cliente.idCliente}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if> /></td>
                            </tr>
                            <tr>
                                <td>Nome</td>
                                <td><input type="text" name="txtNomeCliente" value="${cliente.nome}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>
                            <tr>
                                <td>CPF</td>
                                <td><input type="text" name="txtCpfCliente" value="${cliente.cpf}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>
                            <tr>
                                <td>Estado</td>
                                <td>
                                    <select name="optEstado">
                                        <option value="Minas Gerais" <c:if test="${cliente.uf}">  selected</c:if>>
                                            Minas Gerais
                                        </option>
                                        <option value="Rio de Janeiro" <c:if test="${cliente.uf}">  selected</c:if>>
                                            Rio de Janeiro
                                        </option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Data de Nascimento</td>
                                <td><input type="date" name="txtDataNascimentoCliente" value="${cliente.dataNascimento}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>
                            <tr>
                                <td>Sexo</td>
                                <td><input type="radio" name="txtSexoCliente" value="${cliente.sexo}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>M</td>
                            <td><input type="radio" name="txtSexoCliente" value="${cliente.sexo}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>F</td>
                            </tr>
                            <tr>
                                <td>E-Mail</td>
                                <td><input type="text" name="txtEmailCliente"  maxlength="50" value="${cliente.email}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>
                            <tr>
                                <td>CEP</td>
                                <td><input type="number" name="txtCEPCliente" maxlength="9" value="${cliente.cep}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>
                            <tr>
                                <td>Logradouro</td>
                                <td><input type="text" name="txtLogradouroCliente" value="${cliente.logradouro}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                                <td>Número</td>
                                <td><input type="number" name="txtNumeroCliente" value="${cliente.logradouro}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>
                            <tr>
                                <td>Cidade</td>
                                <td><input type="text" name="txtCidadeCliente" value="${cliente.cidade}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>
                            <tr>
                                <td>Bairro</td>
                                <td><input type="text" name="txtBairroCliente" value="${cliente.bairro}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>
                            <tr>
                                <td>Complemento</td>
                                <td><input type="text" name="txtComplementoCliente" value="${cliente.complemento}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                            </tr>
                            <tr>
                                <td>Telefone</td>
                                <td><input type="number" name="txtTelefoneCliente" value="${cliente.telefone}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
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
                        if (form.txtCodCliente.value == "") {
                            mensagem = mensagem + "Informe o Código do Cliente\n";
                        }
                        if (form.txtNomeCliente.value == "") {
                            mensagem = mensagem + "Informe o Nome do Cliente\n";
                        }
                        if (form.txtCpfCliente.value == "") {
                            mensagem = mensagem + "Informe o CPF\n";
                        }
                        if (form.txtCEPCliente.value == "") {
                            mensagem = mensagem + "Informe o CEP\n";
                        }
                        if (form.optEstado.value == "") {
                            mensagem = mensagem + "Selecione o estado\n";
                        }
                        if (form.txtDataNascimentoCliente.value == "") {
                            mensagem = mensagem + "Data de nascimento deve ser preenchida\n";
                        }
                        if (form.txtSexoCliente.value == "") {
                            mensagem = mensagem + "Selecione o gênero\n";
                        }
                        if (form.txtEmailCliente.value == "") {
                            mensagem = mensagem + "Informe o e-mail\n";
                        }
                        if (form.txtCidadeCliente.value == "") {
                            mensagem = mensagem + "Informe a cidade do cliente\n";
                        }
                        if (form.txtBairroCliente.value == "") {
                            mensagem = mensagem + "Informe o bairro do cliente\n";
                        }
                        if (form.txtLogradouroCliente.value == "") {
                            mensagem = mensagem + "Preencha o logradouro\n";
                        }
                        if (form.txtNumeroCliente.value == "") {
                            mensagem = mensagem + "Informe o número do endereço\n";
                        }
                        if (form.txtComplementoCliente.value == "") {
                            mensagem = mensagem + "Informe um complemento\n";
                        }
                        if (form.txtTelefoneCliente.value == "") {
                            mensagem = mensagem + "Informe um contato telefônico\n";
                        }
                        if (!campoNumerico(form.txtCEPCliente.value)) {
                            mensagem = mensagem + "CEP deve ser numérico\n";
                        }
                        if (!campoNumerico(form.txtTelefoneCliente.value)) {
                            mensagem = mensagem + "Telefone deve ser numérico\n";
                        }
                        if (!campoNumerico(form.txtNumeroCliente.value)) {
                            mensagem = mensagem + "Número do endereço deve ser numérico\n";
                        }
                        if (!campoNumerico(form.txtCpfCliente.value)) {
                            mensagem = mensagem + "CPF deve ser numérico\n";
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
