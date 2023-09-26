<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"> -->
    <title>firsthome</title>
    <link rel="stylesheet" href="../assets/CSS/firsthome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>


    <div class="header">
        <a href="#default" class="logo">Blood Bank</a>
        <div class="header-right">
            <a class="active" href="#home">Home</a>
            <a href="<%=request.getContextPath() %>/pages/Donor Register.jsp">Donor</a>
            <a href="<%=request.getContextPath() %>/pages/Seeker Register.jsp">Hospital</a>
            <a href="#contact">Contact</a>
            <a href="#about">About</a>
        </div>
    </div>

    <div>
        <div class="first">
            <img class="main" src="../assets/image/download.png">
            <h1>SAVE BLOOD<BR>
                <p>SAVE LIVES</p>
            </h1>
            <h2>A DROP OF BLOOD FOR LIFE</h2>
            <h3>LET'S BE A BLOOD DONOR FOR GOOD</h3>
            <!-- <h4>A blood bag in time saves a life</h4> -->
            <a href="./Donor Register.html"><button>Donor</button></a>

        </div>
    </div>
    </div>


    <div>
        <div class="cards">
            <div class="card-container">
                <div class="card">
                    <p>User Register</p>
                    <p id="count" class="count">0</p>
                </div>

                <div class="card">
                    <p>Hospital Register</p>
                    <p id="count1" class="count1">0</p>
                </div>
            </div>
        </div>
    </div>

    <div class="learn">
        <h4>LEARN ABOUT DONATION</h4>

        <div class="learn1">
            <img src="../assets/image/blood-donation-image001.png" width="600px" height="400px">

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
            <span>After donating blood, the body works to replenish the blood loss.<br> This stimulates the
                production
                of<br>
                new
                blood
                cells and
                in turn, helps in maintaining good health.</span>
        </div>
    </div>

    <div class="foot">
        <footer>
            <div class="container">
                <div class="footer-content">
                    <div class="footer-logo">
                        <h5>Blood Bank</h5>
                    </div>
                    <div class="footer-links">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Donate</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="footer-info">
                    <p>&copy; 2023 Blood Donation Center</p>
                    <p>Email: contact@blooddonation.com</p>
                </div>
            </div>
        </footer>
    </div>
    
    <!-- <script>
        // Function to update the user count on the page
        function updateUserCount() {
            // Get existing data from localStorage (if any)
            let existingData = JSON.parse(localStorage.getItem('register')) || [];

            // Update the user count element with the number of registered users
            document.getElementById('userCount').textContent = existingData.length;
        }

        // Call the function to update the user count when the page loads
        window.addEventListener('load', updateUserCount);


        let user = JSON.parse(localStorage.getItem("Donorregister"));
        console.log(user.length);

        document.getElementById("count").innerText = user.length;

        let Hospital = JSON.parse(localStorage.getItem("SeekerRegister"));
        console.log(user.length);
        document.getElementById("count1").innerText = Hospital.length;

    </script>

 -->
</body>

</html>