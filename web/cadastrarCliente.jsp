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
            <hr>
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
                <form action="ManterClienteController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterCliente">
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
                    <p><input type="submit" value="Incluir" name="btnIncluir">
                        <input type="submit" value="Limpar">
                        <input type="submit" value="Excluir" name="btnExcluir">
                        <input type="submit" value="Alterar" name="btnAlterar">
                    </p>
                </form>
            </div>
        </section>
    </body>
</html>
