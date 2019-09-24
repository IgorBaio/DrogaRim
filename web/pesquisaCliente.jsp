<%-- 
    Document   : pesquisaProduto
    Created on : 19/09/2019, 09:09:02
    Author     : Igori
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
       <table>
                <tr>
                    <th>
                        Código Cliente
                    </th>
                    <th>
                        Nome Cliente
                    </th>
                </tr>
                <c:forEach items="${clientes}" var="cliente">
                <tr>
                    <td><c:out value="${cliente.id}" /></td>
                    <td><c:out value="${cliente.id}" /></td>    
                </tr>
                 </c:forEach>
            
       </table>

        </header>
    </body>
</html>
