<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Donor Donating</title>
    <style>
        /* Reset some default styles */
        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }

        h1 {
            font-size: 10px;
            text-align: center;
            text-decoration: none;
        }
        
        #anker1 {
         text-decoration:none;
        }
        
        img{
        vertical-align: middle;
    margin-left: 39px;
    margin-top: 165px;
    border-radius: 30px;
        }
        

        /* Style the form container */
        form {
            max-width: 470px;
            margin: 47px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            margin-right: 89px;
           margin-top: -460px;
}
        }

        /* Style form labels */
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        /* Style form input fields */
        input[type="text"],
        input[type="date"], 
        input[type = "tel"]{
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        /* Style the select dropdown */
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        /* Style the submit button */
        button[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            cursor: pointer;
            margin-left: 54px;
            width: 322px;
        }
        a h1{
        color: black;
        font-size: 29px;
        }
        a{
          text-decoration: none;
        }
        h1{
          text-decoration: none;
        }
        

        /* Add some spacing between form elements */
        br {
            margin-top: 10px;
        }
    </style>
</head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">



<body>
	<img class = "Donation" src="../assets/image/D.png" width="600px" height="400px">
    
    <form id="Form" action="/blood/request" method="post">

        <a id="anker1" href = "<%=request.getContextPath()%>/pages/Donor Index.jsp"><h1>Donor Donating Form</h1></a>

        <label>Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter your Name" required pattern = "^[A-Za-z\- ]+$"> </br>
        <!-- <label>Title:</label>
        <input type="text" name="title" placeholder="Title" required> </br> -->
        <label>Description:</label>
        <input type="text" id="description" name="description" placeholder="Enter your Description" required>
        </br>

        <label for="bloodgroup">Blood Group:</label> <select id="bloodgroup" name="bloodgroup"
            placeholder="Enter your bloodgroup" required>
            <option value="" disabled selected>Select your blood group</option>
            <option value="A+">A+</option>
            <option value="A-">A-</option>
            <option value="B+">B+</option>
            <option value="B-">B-</option>
            <option value="AB+">AB+</option>
            <option value="AB-">AB-</option>
            <option value="O+">O+</option>
            <option value="O-">O-</option>
        </select><br>
       <label>Date:</label>
<input type="date" id="date" name="date" placeholder="Enter your Date" required> </br>
        <label>Phone :</label>
<input type="tel" id="phone" name="phone" placeholder="Enter your Phone Number" required pattern="[6-9]\d{1,10}">




        <!-- Other fields here -->
       <button type="submit" id="submitButton">Submit</button>
    </form>

   <!--   <script>
        // Add an event listener to the form for when it is submitted

        document.addEventListener("DOMContentLoaded", function () {
            const form = document.getElementById("Form");

            form.addEventListener("submit", function (event) {
                event.preventDefault();

                // Retrieve values from the form
                const name = document.getElementById("name").value;
                const description = document.getElementById("description").value;
                const bloodgroup = document.getElementById("bloodgroup").value;
                const date = document.getElementById("date").value;
                const phone = document.getElementById("phone").value;
                const email = JSON.parse(localStorage.getItem("loginDonor"));
                // Create an object to store the form data
                const formData = {
                    name: name,
                    email: email,
                    description: description,
                    bloodgroup: bloodgroup,
                    date: date,
                    phone: phone
                };

                // Retrieve existing data from localStorage or create an empty array
                let dataArray = JSON.parse(localStorage.getItem("DonorDate")) || [];

                // Add the current form data to the array
                dataArray.push(formData);

                // Store the updated array in localStorage
                localStorage.setItem("DonorDate", JSON.stringify(dataArray));

                // Display a success message (you can customize this)
                window.location.href = "./Bookingcard.html";
                alert("Success full Donate");


                // Optionally, you can reset the form fields after submission
                form.reset();
            });
        });


    </script>
-->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const submitButton = document.getElementById("submitButton");

        submitButton.addEventListener("click", function (event) {
            const isConfirmed = confirm("Are you sure you want to submit?");
            
            if (!isConfirmed) {
                event.preventDefault(); // Prevent the form from being submitted if not confirmed
            }
        });
    });
</script>


<script>
document.addEventListener("DOMContentLoaded", function () {
    const dateInput = document.getElementById("date");

    dateInput.addEventListener("blur", function () {
        const selectedDate = new Date(dateInput.value);
        const currentDate = new Date();

        if (selectedDate < currentDate) {
            alert("Date must be in the future.");
            dateInput.value = ""; // Clear the input
        }
    });
});
</script>


</body>

</html>