<!DOCTYPE html>
<html>

<head>
    <title>Login Page</title>
    <link rel="stylesheet" href="../assets/CSS/DonorLogin.css">
</head>

<body>
    <div class="container">
        <h1> Donor Login</h1>
        <form id="LoginForm" action="../login" method="post" onsubmit="return check()">
        

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required >
            </div>
            
            <a class = "forgot" href = "#">Forgot Password ?</a>

            <button type="submit">Login</button>
           
			 
        </form>
         <div class = "sign">
          	<span>Not Register ?</span><a href = "<%=request.getContextPath()%>/pages/Donor Register.jsp">Create Your Account </a>
            </div>
    </div>
    
    <script>
function check() {
    let password = document.getElementById('password').value;
    
    if (!/^.{8}$/.test(password)) {
        alert('Wrong Password.');
        return false;
    }
    return true;
}
</script>

   

</body>

</html>