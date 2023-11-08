<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Page</title>
<link rel="stylesheet" href="../assets/CSS/Donor Register.css">
</head>

<body>
	<div class="fullpage">
		<h1>Donor Register</h1>
		<form id="form" action="/blood/userRegister" method="post">

			<!-- onsubmit="return validateForm()" -->
			<div class="form-group">
				<label for="name">Name:</label> <input type="text" id="name"
					name="name" required>
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="email" id="email"
					name="email" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					id="password" name="password" required pattern = "(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$">
			</div>
			<div class="form-group">
				<label for="confirmPassword">Confirm Password:</label> <input
					type="password" id="confirmPassword" name="confirmPassword"
					required pattern = "(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$">
			</div>
			<div class="form-group">
				<label for="address">Address:</label> <input type="text"
					id="address" name="address" required>
			</div>
			<div class="form-group">
				<label for="phone">Phone:</label> <input type="tel" id="phone"
					name="phone" required pattern="[6-9]{1}[0-9]{9}">
			</div>
			<button  type="submit">Register</button>

		</form>
		<p>
			Already you have Account ? <a class="login" href="./DonorLogin.jsp">Log
				In</a>
		</p>

	</div>
	
	<script>
	document.getElementById('form').addEventListener('submit', function(event) {
		  let password = document.getElementById('password').value;
		  let confirmPassword = document.getElementById('confirmPassword').value;
		  if (password !== confirmPassword) {
		    alert('Passwords do not match. Please try again.');
		    event.preventDefault(); // Prevent the form from submitting
		  }
		});
	</script>


	<!-- <script>

        let signUpform = document.getElementById("form");
        document.createElement("Donorregister");
        signUpform.addEventListener("submit", function (event) {
            event.preventDefault();

            let array = [];
            if (localStorage.getItem("Donorregister") != null) {
                array = JSON.parse(localStorage.getItem("Donorregister"));
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
                name: name,
                email: email,
                password: password,
                address: address,
                phone: phone
            };

            array.push(formData);
            const str = JSON.stringify(array);
            localStorage.setItem("Donorregister", str);
            console.log(str);


            window.location.href = "./DonorLogin.html";
        });

    </script> -->

	<!-- <script>
        let signUpform = document.getElementById("form");
        document.createElement("Donorregister");
        signUpform.addEventListener("submit", function (event) {
            event.preventDefault();

            let array = [];
            if (localStorage.getItem("Donorregister") != null) {
                array = JSON.parse(localStorage.getItem("Donorregister"));
            }

            let match = false;

            const id = Date.now();
            console.log(id);

            const name = document.getElementById("name").value;
            const number = document.getElementById("mobile").value;
            const email = document.getElementById("email").value.toLowerCase();
            const address = document.getElementById("address").value;
            const password = document.getElementById("password").value;
            const password1 =
                document.getElementById("password").value;
            if (password != password1) {
                alert("Password and Confirm password are not match");
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
            } else {
                let userObj = {
                    name,
                    number,
                    email,
                    address,
                    password,
                    password1,
                };
                console.log(userObj);

                array.push(userObj);
                const str = JSON.stringify(array);
                localStorage.setItem("Donorregister", str);
                console.log(str);

                window.location.href = "../pages/Login.html";
            }
        });

    </script> -->
</body>


</html>