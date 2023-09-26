<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../assets/CSS/profile.css">
    <title>Hospital Profile</title>
</head>

<body>


    <div class="profile">

        <a href="./Seeker Index.html"> <img class="image" src="../assets/image/arrow.jpg"></a>
        <h1>Hospital Profile</h1>


        <form id="profile-form">
            <label for="name">Hospital Name:</label>
            <input type="text" id="name" name="name" disabled><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" disabled><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" disabled><br>

            <label for="address">Hospital Address:</label>
            <input type="text" id="address" name="address" disabled><br>

            <label for="phone">Phone:</label>
            <input type="tel" id="phone" name="phone" disabled><br>

            <!-- <label for="address">Address:</label>
            <input type="text" id="address" name="address" disabled><br> -->

            <button type="button" onclick="edit()" id="editButton">Edit</button>
            <button type="button" onclick="save()" id="saveButton">Save</button>
            <button type="button" onclick="logout()" id="logout-button">Logout</button>
        </form>
    </div>

    <script>


        let donor = JSON.parse(localStorage.getItem("SeekerRegister"));

        let email = JSON.parse(localStorage.getItem("loginSeeker"));

        let Donor = donor.find(e => e.email === email);

        // let Donat = JSON.parse(localStorage.getItem("DonorDate"));
        // let Date = Donat.filter(e => e.email === email);

        document.getElementById("name").value = Donor.name;
        document.getElementById("email").value = Donor.email;
        document.getElementById("password").value = Donor.password;
        document.getElementById("address").value = Donor.address;
        document.getElementById("phone").value = Donor.phone;


        document.getElementById("editButton");

        function edit() {

            document.getElementById("name").removeAttribute("disabled");
            document.getElementById("name").setAttribute("required", "required");

            document.getElementById("email").removeAttribute("disabled");
            document.getElementById("email").setAttribute("required", "required");

            // document.getElementById("password").removeAttribute("disabled");
            // document.getElementById("password").setAttribute("required", "required");

            document.getElementById("address").removeAttribute("disabled");
            document.getElementById("address").setAttribute("required", "required");

            document.getElementById("phone").removeAttribute("disabled");
            document.getElementById("phone").setAttribute("required", "required");

            alert("You edit now");

        };

        function save() {

            let name = document.getElementById("name").value;
            let email = document.getElementById("email").value;
            let password = document.getElementById("password").value;
            let address = document.getElementById("address").value;
            let phone = document.getElementById("phone").value;

            Donor.name = name;
            Donor.email = email;
            Donor.password = password;
            Donor.address = address;
            Donor.phone = phone;

            document.getElementById("name").removeAttribute("required");
            document.getElementById("name").setAttribute("disabled", "disabled");

            document.getElementById("email").removeAttribute("required");
            document.getElementById("email").setAttribute("disabled", "disabled");

            // document.getElementById("password").removeAttribute("disabled");
            // document.getElementById("password").setAttribute("required", "required");

            document.getElementById("address").removeAttribute("required");
            document.getElementById("address").setAttribute("disabled", "disabled");

            document.getElementById("phone").removeAttribute("required");
            document.getElementById("phone").setAttribute("disabled", "disabled");


            localStorage.setItem("SeekerRegister", JSON.stringify(donor));

            alert("You save now")
        }

        function logout() {

            email = "";
            localStorage.setItem("loginSeeker", JSON.stringify(email));
            window.location.href = "./firsthome.html"

        }


    </script>
    <a href="./firsthome.html"></a>

</body>

</html>