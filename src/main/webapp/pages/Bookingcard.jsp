<!DOCTYPE html>
<%@page import="com.fssa.blood.service.RequestService"%>
<%@page import="com.fssa.blood.model.Request"%>
<%@page import="java.util.List"%>
<%@page import="com.fssa.blood.model.User"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../assets/CSS/Bookingcard.css">
    <title>Donor Details</title>
</head>

	<%
	User user = (User)request.getSession().getAttribute("loggedInEmail");
	RequestService requestService = new RequestService();

	Request requestDetails = (Request)requestService.getRequestsByEmail(user.getEmail());

	%>

   <body>
    <a href = "<%=request.getContextPath()%>/pages/Donor Index.jsp"><h1>Donor Details</h1></a>
    <form id="profile-form" method="POST" action="<%=request.getContextPath()%>/Bookingcard">
        <div class="card">
            <div class="bookinginfo">
                <label for="name" class="name">Name:</label><br>
                <input type="text" id="name" name="name" value="<%=requestDetails==null ? "": requestDetails.getname()%>" disabled><br>

                <label for="description">Description:</label>
                <input type="text" id="description" name="description" value="<%=requestDetails==null ? "": requestDetails.getdescription()%>" disabled>

                <label for="bloodgroup">Bloodgroup:</label>
                <input type="text" id="bloodgroup" name="bloodgroup" value="<%=requestDetails==null ? "": requestDetails. getgroup()%>" disabled>

                <label for="date">Date:</label>
                <input type="date" id="date" name="date" value="<%=requestDetails==null ? "": requestDetails. getdate()%>" disabled>

                <label for="phone">Phone:</label>
                <input type="tel" id="phone" name="phone" value="<%=requestDetails==null ? "": requestDetails. getnumber()%>"disabled><br>
            </div>

            <a id= "delete" href="<%= request.getContextPath() %>/DeleteRequestServlet?email=<%= user.getEmail() %>">Delete</a>
            
        </div>
       
    </form>

	 <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script>
    
    getAllAccounts();
    function getAllAccounts() {
    	const url = "http://localhost:8080/blood/RequestAllUserServlet";
    	axios.get(url)
    	  .then(function (response) {
    	    // handle success
    	    console.log(response);
    	    const reqDet = response.data;
    	    console.log(reqDet);
    	    
    	  })
    	  .catch(function (error) {
    	    // handle error
    	    console.log(error);
    	  })
    }
    


   <!--  let donor = JSON.parse(localStorage.getItem("DonorDate"));

        let email = JSON.parse(localStorage.getItem("loginDonor"));

        let Donor = donor.filter(e => e.email === email);

        let p1, p2, p3, p4, p5; // Define these variables outside the loop
        for (let i = 0; i < Donor.length; i++) {
            let div_card;
            let div_bookinginfo;
            let editButton;
            let saveButton;
            let deleteButton;
            let editMode = false;
            let label;

            div_card = document.createElement("div");
            div_card.setAttribute("class", "card");

            div_bookinginfo = document.createElement("div");
            div_bookinginfo.setAttribute("class", "booking-info");
            div_card.append(div_bookinginfo);

            label = document.createElement("label");
            label.innerText = "Name:";
            div_bookinginfo.append(label);

            p1 = createEditableParagraph(Donor[i]["name"]);
            div_bookinginfo.appendChild(p1);

            label = document.createElement("label");
            label.innerText = "Description: ";
            div_bookinginfo.append(label);

            p2 = createEditableParagraph(Donor[i]["description"]);
            div_bookinginfo.appendChild(p2);
            label = document.createElement("label");
            label.innerText = "Bloodgroup: ";
            div_bookinginfo.append(label);

            p3 = createEditableParagraph(Donor[i]["bloodgroup"]);
            div_bookinginfo.appendChild(p3);
            label = document.createElement("label");
            label.innerText = "Date: ";
            div_bookinginfo.append(label);

            p4 = createEditableParagraph(Donor[i]["date"]);
            div_bookinginfo.appendChild(p4);

            label = document.createElement("label");
            label.innerText = "Phone: ";
            div_bookinginfo.append(label);

            p5 = createEditableParagraph(Donor[i]["phone"]);
            div_bookinginfo.appendChild(p5);

            editButton = createButton("Edit");
            editButton.setAttribute("id", "editButton");
            saveButton = createButton("Save");
            saveButton.setAttribute("id", "saveButton");
            saveButton.style.display = "none"; // Initially hidden
            deleteButton = createButton("Delete");
            deleteButton.setAttribute("id", "deleteButton");

            div_bookinginfo.appendChild(editButton);
            div_bookinginfo.appendChild(saveButton);
            div_bookinginfo.appendChild(deleteButton);

            // Event listener for Edit button
            editButton.addEventListener("click", function () {
                if (!editMode) {
                    // Enter edit mode
                    editMode = true;
                    editButton.style.display = "none";
                    saveButton.style.display = "block";
                    enableEditFields();
                } else {
                    // Exit edit mode
                    editMode = false;
                    editButton.style.display = "block";
                    saveButton.style.display = "none";
                    disableEditFields();
                }
                alert("You can edit now");
            });

            // Event listener for Save button
            saveButton.addEventListener("click", function () {
                // Save edited data to Donor[i] and update the display
                Donor[i]["name"] = p1.textContent.replace("Name: ", "").trim();
                Donor[i]["description"] = p2.textContent.replace("Description: ", "").trim();
                Donor[i]["bloodgroup"] = p3.textContent.replace("Bloodgroup: ", "").trim();
                Donor[i]["date"] = p4.textContent.replace("Date: ", "").trim();
                Donor[i]["phone"] = p5.textContent.replace("Phone: ", "").trim();
                localStorage.setItem("DonorDate", JSON.stringify(Donor));

                alert("You can save now");
            });

            // Event listener for Delete button
            deleteButton.addEventListener("click", function () {
                // Implement your delete functionality here
                // You can use Donor[i] to access the data to delete
                // For example, you can remove the item from Donor array and update localStorage
                Donor.splice(i, 1);
                localStorage.setItem("DonorDate", JSON.stringify(Donor));
                // Remove the card from the display
                div_card.remove();
                alert("Are your sure to delete");
            });

            document.querySelector("body").append(div_card);
        }

        function enableEditFields() {
            p1.contentEditable = true;
            p2.contentEditable = true;
            p3.contentEditable = true;
            p4.contentEditable = true;
            p5.contentEditable = true;
        }

        function disableEditFields() {
            p1.contentEditable = false;
            p2.contentEditable = false;
            p3.contentEditable = false;
            p4.contentEditable = false;
            p5.contentEditable = false;
        }

        function createEditableParagraph(text) {
            const p = document.createElement("p");
            p.contentEditable = true; // Make the content editable
            p.innerText = text;
            return p;
        }

        function createButton(text) {
            const button = document.createElement("button");
            button.innerText = text;
            return button;
        }   -->
    </script>
</body>

</html>