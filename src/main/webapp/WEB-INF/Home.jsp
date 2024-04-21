<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Accueil - Mon Hôtel</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
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
        background-color: #f8f9fa;
        padding: 10px 0;
        text-align: center;
    }
    nav{
        position: fixed;
        width: 100%;
        top: 0;
        z-index: 1000;
        background: #ffffff47;
        backdrop-filter: blur(15px);
    }
    p{
    margin : 0;
    }
header {

  height: 600px;
  backdrop-filter: blur(50px);
  background: url('https://i.ibb.co/Z8XKpgV/vecteezy-a-modern-hotel-room-with-a-bed-desk-and-television-33390885.jpg') no-repeat bottom right/cover;
}

    .title{
    
    	width:700px;
    	margin:220px auto;
    	color:white;
    	  text-align: center;
    }
    .title > h2{
    	font-size:40px;
    	text-transform:uppercase;
    	font-weight:800;
    	text-shadow: 0 0 20px white;
    }
    .title > h4{
    	font-size:14px;
    	text-transform:uppercase;
    	font-weight:600;
    	color:white;
    
    }
    
    .check-availabilty{
    align-content: center;
    align-items: center;
    position: relative;
    top: 1px;
    width: 90%;
    height: 100px;
    background: rgba(150, 200, 255, 0.8);

}

.form-checking{
    justify-content: center;
}



    
  
</style>
</head>
<body>

<header>
  <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand" href="#">Paradise Hotel</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Acceuil">Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="se">Historique de reservation</a>
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
    
    <div class="title">
    	<h2>Welcome to Paradise Hotel</h2>
  
    	<h4>Enjoy spending your time with us</h4>
    </div>
    
    
</header>



<div class="rounded m-5 check-availabilty" id="next">
                <form id="formCheck" method="post" action="room" class="form-checking row" >
                    <div class="col-md-2 mb-2">
                        <label for="CheckIn">Check In</label>
                        <input class="form-control mt-1" type="date" id="start" name="datearriverr" value="2024-04-19" min="2024-01-01" max="2030-12-31" />
                    </div>
              
                    <div class="col-md-2 mb-2">
                        <label for="inputAdulte">Type</label>
                        <input class="form-control mt-1" type="text" id="inputType"value="Chambre" name="Type">
                           
                    </div>
                    <div class="col-md-1 mb-2">
                        <label for="inputAdulte">Nombre</label>
                        <input class="form-control mt-1" type="Number" id="inputAdulte" value="1" name="nbr">
                           
                    </div>
                   <div>
                    <button id="checkRoom"  style="position: relative; top:10px;background-color: #1F75FE; height: 40px; width: 200px;" class="border-0 mx-5 mt-4 text-light rounded" style="background-color: #1F75FE;"  type="submit" class="btn">Check Availabilty</button>
                    </div>
                </form>
              </div>
              


<div class="container">

   
    <div class="row">
        <c:forEach var="room" items="${rooms}">
            <div class="col-md-4">
                <div class="card">
                    <img src="${room.getImg()}" class="card-img-top" alt="Chambre">
                    <div class="card-body">
                   
                        <h5 class="card-title">${room.getType()}</h5>
                        <p class="card-text my-2">${room.getEquipement()}</p>
                        <p class="card-text my-2">Prix : ${room.getPrix()} DH Par nuit</p>
                        <p class="card-text my-2">Nombre de Personne : ${room. getNombre_personne()} </p>
                        <a href="reserve?roomId=${room.getRoomId()}" class="btn btn-primary my-2">Réserver</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>


   <div class="container">
    <div class="row">
        <c:forEach var="room" items="${roomsi}">
            <div class="col-md-4">
                <div class="card">
                    <img src="${room.getImg()}" class="card-img-top" alt="Chambre">
                    <div class="card-body">
                   
                        <h5 class="card-title my-2">${room.getType()}</h5>
                        <p class="card-text my-2">${room.getEquipement()}</p>
                        <p class="card-text my-2">Prix : ${room.getPrix()} DH / Par nuit</p>
                        <p class="card-text my-2">Nombre de Personne : ${room. getNombre_personne()} </p>
                        <a href="reserve?Id=${room.getId()}" class="btn btn-primary my-2">Réserver</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
      

<footer class="footer">
    <div class="container">
        <p> 2024 Mon Hôtel. Tous droits réservés.</p>
    </div>
</footer>


<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
