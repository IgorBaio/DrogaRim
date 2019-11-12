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
        <title>Cadastrar funcionário - ${operacao}</title>
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
                            <a href="PesquisaProdutoController">Produto</a>
                        </td>

                        <td>
                            <a href="PesquisaClienteController">Cliente</a>
                        </td>

                        <td>
                            <a href="PesquisaFuncionarioController"  class="paginaSelecionada">Funcionário</a>
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
                        <a href="PesquisaFuncionarioController">
                            Funcionários
                        </a>
                    </td>
                    <td>
                        <a href="ManterFuncionarioController?acao=prepararOperacao&operacao=Incluir" class="paginaSelecionada">
                            Cadastrar Funcionário
                        </a>
                    </td>
                </tr>
            </table>

        </div>

        <section>
            <div id="cadastrarFuncionario">
                <form action="ManterFuncionarioController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterFuncionario">
                    <table>

                        <!--<tr>
                            <td>
                                <select>
                                    <option value="funcao">Função</option>
                                </select>
                            </td>
                            <td>
                                <select>
                                    <option value="situacao">Situação</option>
                                </select>
                            </td>
                        </tr>-->
                        <tr>
                            <td>Código do funcionário</td>
                            <td><input type="text" name="txtCodFuncionario" value="${funcionario.idFuncionario}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>/></td>
                        </tr>
                        <tr>
                            <td>Login</td>
                            <td><input type="text" name="txtLoginFuncionario" value="${funcionario.login}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                        </tr>
                        <tr>
                            <td>Senha</td>
                            <td><input type="text" name="txtSenhaFuncionario" value="${funcionario.senha}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                        </tr>
                        <tr>
                            <td>Função</td>
                            <td><input type="text" name="txtFuncaoFuncionario" value="${funcionario.funcao}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                        </tr>
                    </table>
                    <p><input type="submit" value="Incluir" name="btnIncluir">
                            <input type="submit" value="Limpar">
                            <input type="submit" value="Excluir" name="btnExcluir">
                            <input type="submit" value="Alterar" name="btnAlterar"></p>
                </form>
            </div>
        </section>
    </body>
</html>
