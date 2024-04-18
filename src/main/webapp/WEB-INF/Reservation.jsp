<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%@ include file="taglibs.jsp" %>
  <c:forEach var="res" items="${listreservation}">
        <p><c:out value="${res.getReservationId()}"></c:out></p>
        <p><c:out value="${res.getRoomId()}"></c:out></p>
        <p><c:out value="${res.getStartDate()}"></c:out></p>
        <p><c:out value="${res.getEndDate()}"></c:out></p>
</c:forEach>
<h1>Make a Reservation</h1>
    <form action="reservation" method="post">

            <label for="id_res">Id reservation:</label>
        <input type="text" id="reservationId" name="reservationId" required><br>
        <label for="roomId">Room ID:</label>
        <input type="text" id="roomId" name="roomId" required><br>

        <label for="startDate">Start Date:</label>
        <input type="date" id="startDate" name="startDate" required><br>

        <label for="endDate">End Date:</label>
        <input type="date" id="endDate" name="endDate" required><br>


        <input type="submit" value="Submit">
    </form>
</body>
</html>