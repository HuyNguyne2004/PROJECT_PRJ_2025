<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                font-family: 'Jost', sans-serif;
                background: linear-gradient(to bottom, #0f0c29, #cc204c, #24243e);
            }
            .container{
                width: 350px;
                height: 400px;
                background: url("https://your-image-url.com") no-repeat center/cover;
                border-radius: 10px;
                box-shadow: 5px 20px 50px #000;
                padding: 20px;
                text-align: center;
            }
            label{
                color: #cc204c;
                font-size: 2em;
                font-weight: bold;
            }
            input{
                width: 80%;
                height: 35px;
                margin: 10px auto;
                padding: 10px;
                border: none;
                outline: none;
                border-radius: 5px;
                display: block;
            }
            button{
                width: 80%;
                height: 40px;
                background: #cc204c;
                color: #fff;
                font-size: 1em;
                font-weight: bold;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                margin-top: 15px;
            }
            button:hover{
                background: #b81b3c;
            }
            span{
                color: red;
                display: block;
                margin-top: 10px;
            }
        </style>
        <title>Login</title>
    </head>
    <body>
        <div class="container">
            <label>Login</label>
            <form action="authen?action=login" method="POST">
                <input type="email" name="email" placeholder="Email" required>
                <input type="password" name="pswd" placeholder="Password" required>
                <button type="submit">Login</button>
            </form>
            <span>${error}</span>
            <p>Don't have an account? <a href="${pageContext.request.contextPath}/view/authen/signup.jsp" style="color: white;">Sign up</a></p>
        </div>
    </body>
</html>
