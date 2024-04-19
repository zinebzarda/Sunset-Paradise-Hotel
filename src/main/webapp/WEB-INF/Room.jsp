<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>main</title>
<link rel="stylesheet" type="text/css" href="Style.css">
</head>

<body>
    <%@ include file="taglibs.jsp" %>
    

    
    
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
                    <td><c:out value="${room.getEquipment()}"></c:out></td>
                    <td><c:out value="${room.getAvailability()}"></c:out></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>


</body>
</html>