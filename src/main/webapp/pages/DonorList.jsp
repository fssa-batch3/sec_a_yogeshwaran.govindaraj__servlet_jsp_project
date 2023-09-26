<!DOCTYPE html>
<html lang="en">

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Donor list</title>

<head>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td,
        th {
            border: 1px solid #dddddd;
            text-align: center;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }

        th {
            background-color: green;
            background-color: green;
            text-align: center;
            color: white;
        }

        h2 {
            text-align: center;
            font-size: 47px;
        }
    </style>
</head>

<body>
    <h2>Donor List</h2>




    <table id="dataTable">
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Phone Number</th>
                <th>Blood group</th>
            </tr>

            <!-- <tr class="values">
                <td class="name">Alfreds Futterkiste</td>
                <td class="email">Maria Anders</td>
                <td class="address">Germany</td>
                <td class="phone">6380843901</td>
                <td class="bloodgroup">A+</td>

            </tr> -->
        </thead>
        <tbody>
            <!-- Table data rows will be populated here -->
        </tbody>
    </table>

    <script>

        let address = JSON.parse(localStorage.getItem("Donorregister"));
        let list = JSON.parse(localStorage.getItem("DonorDate"));

        for (let i = 0; i < list.length; i++) {


            let tr;
            let td1;
            let td2;
            let td3;
            let td4;
            let td5;

            tr = document.createElement("tr");
            tr.setAttribute("class", "values");

            td1 = document.createElement("td");
            td1.setAttribute("class", "name");
            td1.innerText = list[i]["name"];
            tr.append(td1);


            td2 = document.createElement("td");
            td2.setAttribute("class", "email");
            td2.innerText = list[i]["email"];
            tr.append(td2);

            td3 = document.createElement("td");
            td3.setAttribute("class", "address");
            td3.innerText = address[i]["address"];
            tr.append(td3);

            td4 = document.createElement("td");
            td4.setAttribute("class", "phone");
            td4.innerText = list[i]["phone"];
            tr.append(td4);

            td5 = document.createElement("td");
            td5.setAttribute("class", "bloodgroup");
            td5.innerText = list[i]["bloodgroup"];
            tr.append(td5);

            document.querySelector("thead").append(tr);

            // label = document.createElement("label");
            // label.innerText = "Name:";
            // div_bookinginfo.append(label);

        }


    </script>

</body>

</html>