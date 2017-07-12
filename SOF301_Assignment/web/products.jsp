<%-- 
    Document   : products
    Created on : Oct 15, 2016, 1:38:45 PM
    Author     : HP
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        
       <h1>Products</h1>
        <form action="ControllerProducts">
            nhap ten sp:<input type="text" name="txtTenSP" value=""/>
            <input type="submit" name="action" value="Search"/> </form>
        <br/>
        <table border="1">
            <tr>
                <td>Code</td>
                <td>Name</td>
                <td>Price</td>
                <td>Edit</td>
                <td>Delete</td>
            </tr>
            <c:forEach var="rows" items="${listSP}">
                <form action="ControllerProducts">
                <tr>
                    <td>${rows.code}</td>
                    <td>${rows.name}</td>
                    <td>${rows.price}</td>
                    <c:url var="del" value="ControllerProducts">
                        <c:param name="action" value="Edit"/>
                        <c:param name="txtCode" value="${rows.code}"/>
                        <c:param name="txtName" value="${rows.name}"/>
                        <c:param name="txtPrice" value="${rows.price}"/>
                    </c:url>
                    <td><a href="${del}">Edit</td>
                    <td>
                        <input type="hidden" name="txtCode" value="${rows.code}"/>
                        <input type="submit" name="action" value="Delete"/>
                    </td>
                </tr>
                </form>
            </c:forEach>
        </table>  
        <br/> 
       
  <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
