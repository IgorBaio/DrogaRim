package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cadastrarCliente_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <meta content=\"text/html\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    <title>Cadastrar produto</title>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("  <header>\n");
      out.write("    <div class=\"barralogo\">\n");
      out.write("        <h1>DROGARIM</h1>\n");
      out.write("        <span id=\"usuario\">Vendedor</span>\n");
      out.write("    </div>\n");
      out.write("    <hr>\n");
      out.write("    <nav>\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <a href=\"index.jsp\">Venda</a>\n");
      out.write("                </td>\n");
      out.write("\n");
      out.write("                <td>\n");
      out.write("                    <a href=\"produto.jsp\">Produto</a>\n");
      out.write("                </td>\n");
      out.write("\n");
      out.write("                <td>\n");
      out.write("                    <a href=\"estoque.jsp\">Estoque</a>\n");
      out.write("                </td>\n");
      out.write("\n");
      out.write("                <td>\n");
      out.write("                    <a href=\"cliente.jsp\" class=\"paginaSelecionada\">Cliente</a>\n");
      out.write("                </td>\n");
      out.write("\n");
      out.write("                <td>\n");
      out.write("                    <a href=\"funcionario.jsp\">FuncionÃ¡rio</a>\n");
      out.write("                </td>\n");
      out.write("\n");
      out.write("                <td>\n");
      out.write("                    <a href=\"fabricante.jsp\">Fabricante</a>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("      </nav>\n");
      out.write("      <hr>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("    <div class=\"subnav\">\n");
      out.write("      <table>\n");
      out.write("          <tr>\n");
      out.write("              <td>\n");
      out.write("                  <a href=\"Cliente.jsp\">\n");
      out.write("                      Cliente\n");
      out.write("                  </a>\n");
      out.write("              </td>\n");
      out.write("\n");
      out.write("              <td>\n");
      out.write("                  <a href=\"cadastrarCliente.jsp\" class=\"paginaSelecionada\">\n");
      out.write("                      Cadastrar Cliente\n");
      out.write("                  </a>\n");
      out.write("              </td>\n");
      out.write("          </tr>\n");
      out.write("      </table>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <section>\n");
      out.write("      <div id=\"cadastrarProduto\">\n");
      out.write("        <form method=\"\" action=\"\">\n");
      out.write("          <table>\n");
      out.write("            <tr>\n");
      out.write("              <td>\n");
      out.write("                <label for=\"iNome\">Nome Completo</label>\n");
      out.write("              </td>\n");
      out.write("              <td>\n");
      out.write("                <input type=\"text\" name=\"tNome\" id=\"iNome\" align=\"right\" size=\"\"/>\n");
      out.write("              </td>\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("            <tr>\n");
      out.write("              <td>\n");
      out.write("                <label for=\"iCPF\">CPF</label>\n");
      out.write("              </td>\n");
      out.write("              <td>\n");
      out.write("                <input type=\"number\" name=\"tCPF\" id=\"iCPF\" maxlength=\"9\"/>\n");
      out.write("              </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("              <td>\n");
      out.write("                <label for='iDataNascimento'>Data Nascimento</label>\n");
      out.write("              </td>\n");
      out.write("              <td>\n");
      out.write("                <input type='date' id='iDataNascimento' name='tDataNascimento'>\n");
      out.write("              </td>\n");
      out.write("              <td>\n");
      out.write("                <label for='iSexo'>Sexo</label>\n");
      out.write("              </td>\n");
      out.write("              <td>\n");
      out.write("                <input type=\"radio\" name=\"tSexo\" id='iSexo' value=\"Masculino\"/>M\n");
      out.write("                <input type=\"radio\" name=\"tSexo\" id='iSexo' value=\"Feminimo\"/>F\n");
      out.write("              </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("              <td>\n");
      out.write("                <label for=\"iEmail\">E-mail</label>\n");
      out.write("              </td>\n");
      out.write("              <td>\n");
      out.write("                <input type=\"email\" name=\"tEmail\" id=\"iEmail\" maxlength=\"50\"/>\n");
      out.write("              </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("              <td>\n");
      out.write("                <label for=\"iCEP\">CEP</label>\n");
      out.write("              </td>\n");
      out.write("              <td>\n");
      out.write("                <input type=\"number\" name=\"tCEP\" id=\"iCEP\" max=\"9\" maxlength=\"9\"/>\n");
      out.write("              </td>\n");
      out.write("              <td>\n");
      out.write("                <label for=\"iEstado\">Estado</label>\n");
      out.write("              </td>\n");
      out.write("              <td>\n");
      out.write("                <select name=\"iEstado\">\n");
      out.write("                <option value=\"Minas Gerais\" selected>MG\n");
      out.write("                <option value=\"GoiÃ¡s\" >GO\n");
      out.write("                <option value=\"Rio de Janeiro\">RJ\n");
      out.write("                <option value=\"SÃ£o Paulo\">SP\n");
      out.write("                <option value=\"MaranhÃ£o\">MA\n");
      out.write("                <option value=\"EspÃ­rito Santo\">ES\n");
      out.write("                </select>\n");
      out.write("              </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("              <td>\n");
      out.write("                <label for=\"iLogradouro\">Logradouro</label>\n");
      out.write("              </td>\n");
      out.write("              <td>\n");
      out.write("                <input type=\"text\" name=\"tlogradouro\" id=\"ilogradouro\" maxlength=\"50\"/>\n");
      out.write("              </td>\n");
      out.write("              <td>\n");
      out.write("                <label for=\"inumero\">NÂº</label>\n");
      out.write("              </td>\n");
      out.write("              <td>\n");
      out.write("                <input type=\"number\" name=\"tnumero\" id=\"inumero\" max=\"4\"/>\n");
      out.write("              </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("              <td>\n");
      out.write("                <label for=\"iLogradouro\">Bairro</label>\n");
      out.write("              </td>\n");
      out.write("              <td>\n");
      out.write("                <input type=\"text\" name=\"tlogradouro\" id=\"ilogradouro\" maxlength=\"50\"/></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("              <td>\n");
      out.write("                <label for=\"iLogradouro\">Cidade</label>\n");
      out.write("              </td>\n");
      out.write("              <td>\n");
      out.write("                <input type=\"text\" name=\"tlogradouro\" id=\"ilogradouro\" maxlength=\"50\"/></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("              <td>\n");
      out.write("                <label for=\"iLogradouro\">Complemento</label>\n");
      out.write("              </td>\n");
      out.write("              <td>\n");
      out.write("                <input type=\"text\" name=\"tlogradouro\" id=\"ilogradouro\" maxlength=\"50\"/></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("              <td>\n");
      out.write("                <label for=\"iTelefone\">Telefone</label>\n");
      out.write("              </td>\n");
      out.write("              <td>\n");
      out.write("                <input type=\"number\" id=\"iTelefone\" name=\"tTelefone\" max=\"20\"/>\n");
      out.write("              </td>\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("          <p><input type=\"reset\" value=\"Cancelar\"><input type=\"submit\" value=\"Cadastrar\"></p>\n");
      out.write("        </form>\n");
      out.write("      </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
