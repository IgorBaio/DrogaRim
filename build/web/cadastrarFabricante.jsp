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
        <title>Cadastrar fabricante - ${operacao}</title>
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
                            <a href="PesquisaFuncionarioController">Funcionário</a>
                        </td>

                        <td>
                            <a href="PesquisaFabricanteController"  class="paginaSelecionada">Fabricante</a>
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
                        <a href="PesquisaFabricanteController">
                            Fabricante
                        </a>
                    </td>
                    <td>
                        <a href="ManterFabricanteController?acao=prepararOperacao&operacao=Incluir" class="paginaSelecionada">
                            Cadastrar Fabricante
                        </a>
                    </td>
                </tr>
            </table>
        </div>

        <section>
            <div id="cadastrarFabricante">
                <form action="ManterFabricanteController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterFabricante">
                    <table>
                        <tr>
                            <td>Código do fabricante</td>
                            <td><input type="text" name="txtCodFabricante" id="idFabricante" value="${fabricante.idFabricante}" /></td>
                        </tr>
                        <tr>
                            <td>Nome</td>
                            <td><input type="text" name="txtNomeFabricante" value="${fabricante.nome}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td>
                        </tr>
                    </table>
                    <p><input type="submit" value="Incluir" name="btnIncluir">
                        <input type="submit" value="Limpar">
                        <input type="submit" value="Excluir">
                        <input type="submit" value="Alterar" name="btnAlterar"></p>
                </form>
            </div>
        </section>
    </body>
</html>
