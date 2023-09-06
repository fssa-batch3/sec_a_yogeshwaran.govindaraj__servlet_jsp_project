<html>
<body>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
*{
  margin: 0; 
  padding: 0;
}
body{
  width: 100%;
  font-family: sans-serif;  
}
.header{
  display: flex;
  justify-content: space-around;
  width: 1375px;
  padding: 27px;
  margin-top: 1px;
  background: white;
  height: 50px;
  box-shadow: 10px 10px 15px #cbced1, -10px -10px 20px white;
  position: fixed;
    z-index: 2px;
}
.logo{
  
  margin-left: 10px;
  margin-top: -20px;
}

.navbar{
  display: flex;
  justify-content: space-evenly;
  align-items: center;
  width: 50%;
  margin-left: 369px;
}

.navbar a:last-child{
  background:#2196F3;
  padding: 18px 57px;
  text-decoration: none;
  font-size: 17px;
  font-weight: bolder;
  color: white;
}

.navbar .name{
  background: rgb(55, 214, 55);
  padding: 18px 57px;
  text-decoration: none;
  font-size: 17px;
  font-weight: bolder;
  color: white;
}

.navbar .name:hover{
    background-color: lightgreen;
    opacity: 0.1s;
}

.navbar a:last-child:hover{
    background-color: lightblue;
    opacity: 0.1s;
}

.main{
    width: 640px;
    height: 690px;
    margin-top: 100px;
    margin-left: 50px;
}

h1{
    margin-left: 710px;
    margin-top: -570px;
    font-size: 60px;
}

h1 p{
        margin-left: 197px;
}

h2{
     margin-left: 745px;
    margin-top: 93px;
    font-size: 30px;
}

h3{
	margin-left: 669px;
     margin-top: 30px;
     font-size: 30px;
}

h4{
     margin-left: 778px;
     margin-top: 80px;
     font-size: 30px;
}

button{
    margin-left: 900px;
    margin-top: 104px;
    background:#2196F3;
  padding: 18px 57px;
  text-decoration: none;
  font-size: 17px;
  font-weight: bolder;
  color: white;
  border: none;
}

.card-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-evenly;
  margin-top: 10px;
  
}

.card {
  width: 300px;
  height: 200px;
  background-color: lightblue;
  border: 1px solid #ccc;
 margin-top: 60px;
 font-size: 30px;
  padding: 10px;
  border-radius: 40px;
}

.cards{
    background-color: rgb(169, 168, 168);
    height: 350px;
    max-width: 1250px;
    margin-left: 12px;
    margin-top: 46px;
    /* margin-top: 300px; */

}


p{
    margin-top: 47px;
    margin-left: 30px;
}

.learn{
    font-size: 20px;
    margin-left: 00px;
}

.learn h4{
    margin-top: 74px;
    margin-left: 518px; 
}

.learn p{
    margin-left: 808px;
    font-size: 30px;
    background-color: lightcyan;
    width: 440px;
    margin-top: -338px;
   
}



table {
  width: 30%;
  margin-left: 812px;
  margin-top: 30px;
  border-collapse: collapse;
  border: 1px solid #ccc;
}

th, td {
  padding: 10px;
  text-align: center;
  border: 1px solid #ccc;
}

th {
  background-color: #f0f0f0;
}

tr:nth-child(even) {
  background-color: #f9f9f9;
}

tr:hover {
  background-color: #f0f0f0;
}

.imagedown {
    margin-left: 60px;
    margin-top: -147px;
    font-size: 25px;
    font-family: initial;
    
    /* margin-top: 10px; */
}

footer {
margin-top: 211px
  padding: 20px 0;
 height: 187px;
  background-color: #f8f8f8;
  color: #333;
}

.footer-content {
  max-width: 1200px;
  margin: 86px auto;
  display: flex;
  justify-content: space-between;
}

/* Style the footer logo */
.footer-logo img {
     height: 92px;
    width: 111px;
    margin-top: 30px;
  border-radius: 30px;
}

/* Style the footer links */
.footer-links ul {
     list-style: none;
    margin-top: 107px;
    /* margin-left: -62px; */
    padding: 0;
    display: flex;
}
}

.footer-links li {
  margin-right: 20px;
}

.footer-links li:last-child {
  margin-right: 0;
}

.footer-links a {
  color: #333;
  text-decoration: none;
  font-size: 16px;
}

.footer-links a:hover {
  text-decoration: underline;
}

.footer-address {
  text-align: center;
     margin-top: -122px;
}

.footer-address p {
  margin: 5px 0;
}
</style>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"> -->
    <title>firsthome</title>
    <link rel="stylesheet" href="../assest/css/firsthome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <div>
        <div class="header">
            <div class="logo">
                <img src="./image/logo.jpg" width="114px">
            </div>
            <div class="navbar">
                <a class="name" href="register.jsp">Register</a>
                <a href="./Login.html">Login</a>
            </div>
        </div>

        <div>
            <div class="first">
                <img class="main" src="./image/download.png">
                <h1>SAVE BLOOD<BR>
                    <p>SAVE LIVES</p>
                </h1>
                <h2>A DROP OF BLOOD FOR LIFE</h2>
                <h3>LET'S BE A BLOOD DONOR FOR GOOD</h3>
              
                <a href="./Register.html"><button>Touch ME!</button></a>

            </div>
        </div>
    </div>


    <div>
        <div class="cards">
            <div class="card-container">
                <div class="card">
                    <p>Donor Register</p>
                    <p class="p">0</p>
                </div>

                <div class="card">
                    <p>Seeker Register</p>
                    <p class="p">0</p>
                </div>
            </div>
        </div>
    </div>

    <div class="learn">
        <h4>LEARN ABOUT DONATION</h4>

        <div class="learn1">
            <img src="./image/blood-donation-image001.png" width="600px" height="400px">

            <p>Compatible Blood Type Donors</p>

            <table>
                <tr>
                    <th>Blood Type</th>
                    <th>Donate Blood To</th>
                    <th>Receive Blood From</th>
                </tr>
                <tr>
                    <td>A+</td>
                    <td>A+, AB+</td>
                    <td>A+, A-, O+, O-</td>
                </tr>
                <tr>
                    <td>O+</td>
                    <td>A+, B+, AB+</td>
                    <td>O+, O-</td>
                </tr>
                <tr>
                    <td>B+</td>
                    <td>B+, AB+</td>
                    <td>B+, B-, O+, O-</td>
                </tr>
                <tr>
                    <td>AB+</td>
                    <td>AB+</td>
                    <td>Everyone</td>
                </tr>
                <tr>
                    <td>A-</td>
                    <td>A+, A-, AB+, AB-</td>
                    <td>A-, O-</td>
                </tr>
                <tr>
                    <td>O-</td>
                    <td>Everyone</td>
                    <td>O-</td>
                </tr>
                <tr>
                    <td>B-</td>
                    <td>B+, B-, AB+, AB-</td>
                    <td>B-, O-</td>
                </tr>
                <tr>
                    <td>AB-</td>
                    <td>AB+, AB-</td>
                    <td>AB-, A-, B-, O-</td>
                </tr>
            </table>
        </div>

        <div class="imagedown">
            <span>After donating blood, the body works to replenish the blood loss.<br> This stimulates the production
                of<br>
                new
                blood
                cells and
                in turn, helps in maintaining good health.</span>
        </div>
    </div>

    <div class="foot">
        <footer>
            <div class="footer-content">
                <div class="footer-logo">
                    <img src="./image/logo.jpg" alt="Blood Donation Logo">
                </div>
                <div class=" footer-links">
                    <ul>
                        <li><a href="#" class="fa fa-facebook"></a></li>
                        <li><a href="#" class="fa fa-twitter"></a></li>
                        <li><a href="#" class="fa fa-linkedin"></a></li>
                        <li><a href="#" class="fa fa-instagram"></a></li>


                    </ul>
                </div>
            </div>
            <div class="footer-address">
                <p>123 Blood Drive Street, City</p>
                <p>Email: info@blooddonationwebsite.com</p>
                <p>Phone: (123) 456-7890</p>
            </div>
        </footer>
    </div>


</body>
</html>