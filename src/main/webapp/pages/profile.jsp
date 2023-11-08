<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/CSS/profile.css">
<title>User Profile</title>
</head>

<body>


	<div class="profile">

		<a href="<%= request.getContextPath() %>/pages/Donor Index.jsp"><img class="image"
    src="<%= request.getContextPath() %>/assets/image/arrow.jpg"></a>

		<h1>User Profile</h1>

		<!-- Update servlet -->

		<form id="profile-form" method="POST" action = "<%=request.getContextPath()%>/UpdateUserServlet">
			<label for="name">Name:</label> 
			<input type="text" id="name" name="name" value="${sessionScope.loggedInEmail.name} " disabled><br>

			<label for="email">Email:</label> <input type="email" id="email"
				name="email" disabled value="${sessionScope.loggedInEmail.email} "><br>

			<label for="password" style="display: none">Password:</label> 
			
			<input type="password" style="display: none" id="password" name="password"
				value="${sessionScope.loggedInEmail.password} "><br> <label
				for="address">Address:</label> <input type="text" id="address"
				name="address" disabled
				value="${sessionScope.loggedInEmail.address} "><br> <label
				for="phone">Phone:</label> <input type="tel" id="phone" name="phone"
				disabled value="${sessionScope.loggedInEmail.phone} "><br>

		<!-- 	<label for="bloodgroup">Blood Group:</label> <input type="text"
				id="bloodgroup" name="bloodgroup" disabled><br> -->

			<button type="button" onclick="edit()" id="editButton">Edit</button>
			<button type="submit" id="saveButton">Save</button>
			<a href = "<%=request.getContextPath()%>/LogoutServlet"><button type="button" onclick="logout()" id="logout-button">Logout</button></a>
		</form>
	</div>


	<script>


     /* let donor = JSON.parse(localStorage.getItem("Donorregister"));

        let email = JSON.parse(localStorage.getItem("loginDonor"));

        let Donor = donor.find(e => e.email === email);

        let Donat = JSON.parse(localStorage.getItem("DonorDate"));
        let Date = Donat.filter(e => e.email === email);

        document.getElementById("name").value = Donor.name;
        document.getElementById("email").value = Donor.email;
        document.getElementById("password").value = Donor.password;
        document.getElementById("address").value = Donor.address;
        document.getElementById("phone").value = Donor.phone;
        document.getElementById("bloodgroup").value = Donat[0].bloodgroup;

        document.getElementById("editButton");
 */
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
        
      
      /*  let form = document.querySelector("form");
        form.addEventListener("submit", save());
        function save() {

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

			// Here is Called the Java Servlet to save the profile details
            
			form.setAttribute("action", "");
			console.log("Action attribute set to:", form.getAttribute("action"));

			//form.submit();
			alert("Saved");
		}

		/*
		function logout() {

		    email = "";
		    localStorage.setItem("loginDonor", JSON.stringify(email));
		    window.location.href = "./firsthome.html"

		}
		 */
	</script>


	<a href="./firsthome.html"></a>

</body>

</html>