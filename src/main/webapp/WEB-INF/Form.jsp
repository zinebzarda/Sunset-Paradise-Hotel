<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<title> Mon H�tel</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
body{
		display:flex;
		flex-direction:column;
		justify-content: space-between;
		width:100%;
		height:100vh;
    	background: url('https://i.pinimg.com/564x/6f/71/a8/6f71a8d9be6ab275d57def66f41478fc.jpg') no-repeat bottom right/cover;
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
    }
   
    p{
    margin : 0;
    }

.form {
  width: 300px;
  margin: 0 auto; /* Centre le formulaire horizontalement */
  margin-top: 100px; /* Ajoute un espace en haut pour le positionner verticalement */
  padding: 20px;
  background-color:  rgb(193, 154, 107 ,0.8);
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
  background-color: rgb(111, 78, 55);
  color: #fff;
  border: none;
  cursor: pointer;
}

button:hover {
  background-color: rgb(193, 154, 107);
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
</head>
<body>
<header>
  <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
      
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
                        <a class="nav-link" href="#">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
   
</header>
  
    <div class="form">
    <h6 >ROOMS and SUITES</h6>
    <h4>Reserve Your Room</h4>
      <form action="ReservationServlet" method="post">
        <input type="Date" name="startDate" > 
        <input type="Date" name="endDate" > 
        <input  type="hidden" name="roomId" value="${roomId}" placeholder="ID de la chambre"> 
        <button onclick="reserved()" type="submit">Reserver</button>
        <script type="text/javascript">
        	function reserved(){
        		alert("Room reserved successfully!")
        	}
        </script>
      </form>
    </div>

    
    <footer class="footer">
    
        <p> 2022 Mon Hotel.</p>
    
</footer>


<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>