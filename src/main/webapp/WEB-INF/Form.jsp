<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<title>Accueil - Mon H�tel</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<style>
body{
		display:flex;
		flex-direction:column;
		justify-content: space-between;
		width:100%;
		height:100vh;
    	background: url('https://i.ibb.co/Z8XKpgV/vecteezy-a-modern-hotel-room-with-a-bed-desk-and-television-33390885.jpg') no-repeat bottom right/cover;
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
        background-color: #f8f9fa;
        padding: 10px 0;
        text-align: center;
    }
    .brf{
    display:flex;
    justify-content: space-evenly
    }
    p{
    margin : 0;
    }

.form{
  width: 300px; /* Largeur du cadre */
  margin-right: 20px;
   /* Marge � droite pour l'espacement */
  padding: 20px;
  background-color: #ccd8ff; /* Couleur blanche pour le cadre */
  border-radius: 8px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

form {
  display: flex;
  flex-direction: column;
  
}

input[type="Date"],
input[type="number"],
button {
  margin-bottom: 10px; /* Espacement entre les �l�ments */
  padding: 10px;
  border-radius: 5px;
  border: 1px solid #ccc;
}

button {
  background-color: #007bff;
  color: #fff;
  border: none;
  cursor: pointer;
}

button:hover {
  background-color: #0056b3;
}
 nav{
        position: fixed;
        width: 100%;
        top: 0;
        z-index: 1000;
        background: #ffffff47;
        backdrop-filter: blur(15px);
    }
h6{
margin-top:20px;
color:grey;
font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
font-size: 20px;
  letter-spacing: 0.5px; /* Espacement fin entre les lettres */
  font-weight: 300;
}
h4{
text-align:center;
margin-bottom:20px;
font-weight: 300;
}
.text{
  width: 700px;
  padding: 20px;
  color:white;
  border-radius: 8px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
 
}
.reserTel{
background-color: rgba(204, 216, 255, 0.8);	 /* Couleur bleue semi-transparente avec opacit� de 50% */
  backdrop-filter: blur(10px); 
width:350px;
padding:20px;
border-radius:30px;

}

.reserText{
text-align:center;


 
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
  <div class="brf">
  <div class='text'>
  <h3>Welcome to Paradise Hotel</h3>
      <p>Discover a world of luxury and comfort at Paradise Hotel. Our elegant rooms and suites are designed to provide you with the ultimate relaxation experience. Whether you're here for business or leisure, our hotel offers world-class amenities and exceptional service to make your stay unforgettable.</p>
      <div class="reserTel">
      <h5 class="reserText">Phone Reservation :</h5>
      <h4 class="reserNum">+212 5 666 634 210</h4>
      </div>
      
  </div>
  
    <div class="form">
    <h6 >ROOMS & SUITES</h6>
    <h4>Reserve Your Room</h4>
      <form action="reserve" method="post">
        <input type="Date" name="Datearrive" placeholder="Date d'arriv�e"> 
        <input type="Date" name="Datedepart" placeholder="Date de d�part"> 
        <input  type="hidden" name="idRoom" value="${roomId}" placeholder="ID de la chambre"> 
        <button onclick="reserved()" type="submit">Reserver</button>
        <script type="text/javascript">
        	function reserved(){
        		alert("Room reserved successfully!")
        	}
        </script>
      </form>
    </div>
  </div>
    
    <footer class="footer">
    
        <p> 2024 Mon H�tel. Tous droits r�serv�s.</p>
    
</footer>


<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>