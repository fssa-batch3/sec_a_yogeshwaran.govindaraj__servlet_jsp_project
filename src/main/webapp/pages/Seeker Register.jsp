<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital Registration</title>
    <link rel="stylesheet" href="../assets/CSS/Seeker Register.css"> <!-- Link to your CSS file -->
</head>

<body>
    <div class="container">
        <h1> Hospital Register</h1>
        <form id="form" action="/blood/Seekerregister" method="post">
        
        
            <!-- onsubmit="return validateForm()" -->
            <div class="form-group">
                <label for="name">Hospital Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Hospital Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="confirmPassword">Confirm Password:</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
            </div>
            <div class="form-group">
                <label for="address">Hospital Address:</label>
                <input type="text" id="address" name="address" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="tel" id="phone" name="phone" required>
            </div>
            <button type="submit">Register</button>

            <p>Already you have Account ? <a class="login" href="./SeekerLogin.jsp">Log In</a></p>
        </form>
    </div>
<!-- 
    <script>
        let signUpform = document.getElementById("form");
        document.createElement("SeekerRegister");
        signUpform.addEventListener("submit", function (event) {
            event.preventDefault();

            let array = [];
            if (localStorage.getItem("SeekerRegister") != null) {
                array = JSON.parse(localStorage.getItem("SeekerRegister"));
            }

            let match = false;

            const id = Date.now();


            const name = document.getElementById("name").value;
            const email = document.getElementById("email").value;
            const password = document.getElementById("password").value;
            const confirmPassword = document.getElementById("confirmPassword").value;
            const address = document.getElementById("address").value;
            const phone = document.getElementById("phone").value;


            if (password != confirmPassword) {
                alert("Password and confirmPassword does not match");
                return false;
            } else {
                for (let i = 0; i < array.length; i++) {
                    if (email == array[i]["email"]) {
                        match = true;
                    }
                }
            }

            if (match == true) {
                alert("Email is already Exist");
                return false;
            }

            const formData = {
                name: Hospitalname,
                email: email,
                password: password,
                address: address,
                phone: phone
            };

            array.push(formData);
            const str = JSON.stringify(array);
            localStorage.setItem("SeekerRegister", str);
            console.log(str);


            window.location.href = "./SeekerLogin.html";
        });
    </script> -->

</body>
<a href="./SeekerLogin.html"></a>

</html>