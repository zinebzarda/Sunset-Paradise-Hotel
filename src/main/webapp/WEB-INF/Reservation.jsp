<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<title>Accueil - Mon Hôtel</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<style>

    body {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    width: 100%;
    height: 100vh;
    background: url('https://i.pinimg.com/564x/b4/e3/3d/b4e33df41c2ca4912d70247da0cb515a.jpg') no-repeat bottom right/cover;
    backdrop-filter: blur(2px);
}

.card {
    margin-bottom: 20px;
}

.card-img-top {
    max-height: 200px;
    object-fit: cover;
}

.navbar-brand {
    font-weight: bold;
}

.footer {
    background-color: rgb(193, 154, 107 ,0.8);
    padding: 10px 0;
    text-align: center;
    color: #ecf0f1;
}

nav {
    position: fixed;
    width: 100%;
    top: 0;
    z-index: 1000;
    background: rgba(255, 255, 255, 0.5);
    backdrop-filter: blur(15px);
}

.title {
    padding-top: 50px;
    width: 700px;
    margin: 0 auto;
    color: #ecf0f1;
    text-align: center;
}

.title > h2 {
    font-size: 40px;
    text-transform: uppercase;
    font-weight: 800;
    text-shadow: 0 0 20px rgba(236, 240, 241, 0.8);
}

.title > h4 {
    font-size: 14px;
    text-transform: uppercase;
    font-weight: 600;
    color: #ecf0f1;
}

.info-reser {
    display: flex;
    justify-content: space-evenly;
}

.text-reser {
    width: 700px;
    padding: 20px;
    color: rgba(236, 240, 241, 0.8);
    margin-top: -30px;
}

p {
    margin: 0;
}

  .table-reser th, .table-reser td {
    border: 1px solid black;
    padding: 8px;
    text-align: left;
   background-color:  rgb(193, 154, 107 ,0.8);
  }
  .table-reser th {
      background-color: rgb(193, 154, 107);
  }

</style>

 <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand" href="#">Paradise Hotel</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="se">Historique</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About Nous</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class='info-reser'>
    <div class="text-reser">
    <p>
Merci d'avoir choisi de séjourner dans notre hôtel ! Nous sommes ravis de vous accueillir parmi nous!.</p>
    </div>
    <div class='table-reser'>
     <table class="table table-bordered bg-light">
      <thead >
        <tr>
        <th scope="col">Id reservation</th>
          <th scope="col">Id room</th>
          <th scope="col">DateFin</th>
          <th scope="col">Datedebut</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="reserv" items="${resrvs}">
          <tr>
            <td>${reserv.getReservationId()}</td>
            <td>${reserv.getRoomId()}</td>
            <td>${reserv.getStartDate()}</td>
            <td>${reserv.getEndDate()}</td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
    
    </div>
    </div>
    
 
   

    <footer class="footer">
   
        <p> 2022 Hôtel.</p>
  
</footer>


<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>