<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
    @auth
        <h1>Logged In!</h1> 
        <form action="/Logout" method="POST">
            @csrf
            <button>Logout</button>
        </form>
        <a href="/RedirectLogin">Enter Data</a>
    @else
        <h1>Register</h1> 
        <form action="/Register" method="POST">
            {{ csrf_field() }} <!-- Had to google this -->
            <input name='name' type="text" placeholder="Name"> <br>
            <input name='email' type="text" placeholder="Email"> <br>
            <input name='password' type="text" placeholder="Password"> <br>
            <button>Register</button>
        </form>

        <h1>Login</h1> 
        <form action="/Login" method="POST">
            {{ csrf_field() }} <!-- Had to google this -->
            <input name='loginname' type="text" placeholder="Name"> <br>
            <input name='loginpassword' type="text" placeholder="Password"> <br>
            <button>Login</button>
        </form>
    @endauth


    
</body>
</html>
