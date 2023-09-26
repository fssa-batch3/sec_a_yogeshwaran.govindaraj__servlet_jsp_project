<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/CSS/Donorindex.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Home Page</title>
</head>

<body>
    <div class="header">
        <a href="#default" class="logo">Blood Bank</a>
        <div class="header-right">
            <a class="active" href="#home">Home</a>
            <a href="#contact">Contact</a>
            <a href="#about">About</a>
            <a href="<%=request.getContextPath() %>/pages/Bookingcard.jsp">Booking Detail</a>
           <!--  <a href="./firsthome.html">Logout</a>  -->
            <a class="name" href="<%=request.getContextPath() %>/pages/DonorDonating.jsp">Donate Here</a>
            <a href="<%=request.getContextPath() %>/pages/profile.jsp"><img src="<%=request.getContextPath() %>/assets/image/profile.png" width="70px"></a>
        </div>
    </div>

    <img class="image" src="<%=request.getContextPath() %>/assets/image/Benefits-of-blood-donation.jpg">

    <div class="foot">
        <footer>
            <div class="container">
                <div class="footer-content">
                    <div class="footer-logo">
                        <h1>Blood Bank</h1>
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





    <!-- <div class="card"> -->
    <!-- <h2>Request</h2>

            <p>Title :I need ya blood</p>
            <p>Blood Group:Frontend Developer</p>
            <p>Description:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod.</p>
            <p>Request Date : 12/12/12</p>
            <p>Phone:6380843014</p>
            <button>Close</button>
        </div> -->

    <!-- <script>
        let id = JSON.parse(localStorage.getItem("formDetails"));
        console.log(id);

        for (let i = 0; i < id.length; i++) {

            const card = document.createElement('div');
            card.classList.add('card');

            console.log(id[i]["Request"]);

            const h2 = document.createElement("h2");
            h2.innerText = id[i]["Request"];
            h2.innerHTML = "Request";
            card.appendChild(h2);

            const p = document.createElement('p');
            p.innerText = "Title:" + id[i]["title"];
            card.appendChild(p);

            const p1 = document.createElement('p');
            p1.innerText = "BloodGroup: " + id[i]["bloodGroup"];
            card.appendChild(p1);

            const p2 = document.createElement('p');
            p2.innerText = "Description" + id[i]["description"];
            card.appendChild(p2);

            const p3 = document.createElement('p');
            p3.innerText = "RequestDate" + id[i]["requestDate"];
            card.appendChild(p3);

            const p4 = document.createElement('p');
            p4.innerText = "PhoneNumber" + id[i]["contactNumber"];
            card.appendChild(p4);


            const button = document.createElement('button');
            button.innerText = id[i]["Close"];
            button.innerHTML = "Close";
            card.appendChild(button);



            document.querySelector("body").append(card);
        }
    </script> -->

</body>

</html>