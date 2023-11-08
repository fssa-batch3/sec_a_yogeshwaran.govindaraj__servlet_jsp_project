<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital Login</title>
    <link rel="stylesheet" href="../assets/CSS/SeekerLogin.css">
</head>

<body>

    <body>
        <div class="container">
            <h1> Hospital Login</h1>
            <form id="LoginForm" action="<%=request.getContextPath() %>/SeekerLogin" method="post">

                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>

                <button onclick="submit()">Login</button>

            </form>
        </div>

       <!--   <script>
            const logIn = document.getElementById("LoginForm");

            logIn.addEventListener("submit", (event) => {
                event.preventDefault();

                let user_arr = [];

                let defaultData = JSON.parse(localStorage.getItem("SeekerRegister"));
                console.log(defaultData);

                let email = document.getElementById("email").value;
                let password = document.getElementById("password").value;

                console.log(email, password);

                //   [  { }, {}, {}, {}, {0}, {} ]

                let isMatch = false;

                for (let i = 0; i < defaultData.length; i++) {
                    if (
                        email == defaultData[i].email &&
                        password == defaultData[i].password
                    ) {
                        isMatch = true;

                        user_arr = email;
                        window.localStorage.setItem("loginSeeker", JSON.stringify(user_arr));

                        break;

                    } else {
                        isMatch = false;
                    }
                }


                if (isMatch === true) {
                    alert("Success fully Login")

                    window.location.href = "./Seeker Index.html";
                } else {
                    alert("failed")
                    // window.location.href ="";
                }

            });
        </script>-->
    </body>
    <a href="./Seeker Index.html"></a>

</html>