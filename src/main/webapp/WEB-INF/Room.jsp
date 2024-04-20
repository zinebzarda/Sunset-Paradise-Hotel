<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>main</title>
<link rel="stylesheet" type="text/css" href="Style.css">
<style>
/* Style.css */

/* Style du tableau */
table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}

/* Style de l'en-tête du tableau */
th {
    background-color: #f2f2f2;
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
}

/* Style des cellules du tableau */
td {
    border: 1px solid #ddd;
    padding: 8px;
}

/* Style des lignes impaires */
tr:nth-child(odd) {
    background-color: #f9f9f9;
}

/* Style des liens dans les cellules */
a {
    text-decoration: none;
    color: #007bff;
}

</style>
</head>

<body>
    <%@ include file="taglibs.jsp" %>
    <%@ include file="nav.jsp" %>
         <h2>Rooms</h2>
    <table>
        <thead>
            <tr>
                <th>Room Id</th>
                <th>Type</th>
                <th>Price</th>
                <th>Equipment</th>
                <th>Availability</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="room" items="${listroom}">
                <tr>
                    <td><c:out value="${room.getRoomId()}"></c:out></td>
                    <td><c:out value="${room.getType()}"></c:out></td>
                    <td><c:out value="${room.getPrix()}"></c:out></td>
                    <td><c:out value="${room.getEquipement()}"></c:out></td>
                    <td><c:out value="${room.getAvailability()}"></c:out></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>


</body>
</html>