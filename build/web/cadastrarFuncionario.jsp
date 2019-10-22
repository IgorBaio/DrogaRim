<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta content="text/html">
        <link rel="stylesheet" href="style.css">
        <title>Cadastrar funcion�rio - ${operacao}</title>
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
                            <a href="PesquisaEstoqueController">Estoque</a>
                        </td>

                        <td>
                            <a href="PesquisaClienteController">Cliente</a>
                        </td>

                        <td>
                            <a href="PesquisaFuncionarioController"  class="paginaSelecionada">Funcion�rio</a>
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
                        <a href="PesquisaFuncionarioController">
                            Funcion�rios
                        </a>
                    </td>

                    <td>
                        <a href="cadastrarFuncionario.jsp" class="paginaSelecionada">
                            Cadastrar Funcion�rio
                        </a>
                    </td>
                </tr>
            </table>

        </div>

        <section>
            <div id="cadastrarFuncionario">
                <form action="ManterFuncionarioController?acao=confirmarOperacao&operacao=Incluir" method="post" name="frmManterFuncionario">
                    <table>

                       <!-- <tr>
                            <td>
                                <select>
                                    <option value="funcao">Fun��o</option>
                                </select>
                            </td>
                            <td>
                                <select>
                                    <option value="situacao">Situa��o</option>
                                </select>
                            </td>
                        </tr>-->
                        <tr>
                            <td>C�digo do funcion�rio</td>
                            <td><input type="text" name="txtCodFuncionario" value="${funcionario.idFuncionario}" /></td>
                        </tr>
                        <tr>
                            <td>Login</td>
                            <td><input type="text" name="txtLoginFuncionario" value="${funcionario.login}" /></td>
                        </tr>
                        <tr>
                            <td>Senha</td>
                            <td><input type="text" name="txtSenhaFuncionario" value="${funcionario.senha}" /></td>
                        </tr>
                        <tr>
                            <td>Fun��o</td>
                            <td><input type="text" name="txtFuncaoFuncionario" value="${funcionario.funcao}" /></td>
                        </tr>

                    </table>
                    <p><input type="submit" value="Incluir" name="btnIncluir">
                        <input type="submit" value="Limpar"></p>
                </form>
            </div>
        </section>
    </body>
</html>
