<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../assets/CSS/Seekerindex.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Home Page</title>
</head>

<body>
    <div class="header">
        <h1 id="name" class="logo"></h1>
        <!-- <a href="#default" class="logo" id="name">Blood Bank</a> -->
        <div class="header-right">
            <a class="active" href="#home">Home</a>
            <a href="#contact">Contact</a>
            <a href="#about">About</a>
            <!-- <a href="./DonorList.html">Donor List</a> -->
            <!-- <a href="./firsthome.html">Logout</a> -->
            <a class="name" href="./DonorList.html">Donate List</a>
            <a href="./Hospital Profile.html"><img src="../assets/image/profile.png" width="70px"></a>
        </div>
    </div>

    <img class="image" src="../assets/image/seeker.png">

    <div class="foot">
        <footer>
            <div class="container">
                <div class="footer-content">
                    <div class="footer-logo">
                        <h1 id="foot" class="logo"></h1>
                    </div>
                    <div class="footer-links">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Hospital</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="footer-info">
                    <p>&copy; 2023 Blood Donation Center</p>
                    <p id="email">Email: contact@blooddonation.com</p>
                </div>
            </div>
        </footer>
    </div>

    <script>
        let seeker = JSON.parse(localStorage.getItem("SeekerRegister"));
        console.log(seeker);

        document.getElementById("name").innerText = seeker[0].name;
        document.getElementById("foot").innerText = seeker[0].name;


        document.getElementById("email").innerText = seeker[0].email;


    </script>
</body>

</html>