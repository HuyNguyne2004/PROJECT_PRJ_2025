<%-- 
    Document   : bannerSection
    Created on : Mar 2, 2025, 9:23:31 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
            margin: 0;
	        padding: 0;
	        font-family: Arial, sans-serif;
	        background: linear-gradient(to bottom, #b1a6a4 0%, #d8cfd0 20%, #f2f1ef 50%, #d8cfd0 90%, #b1a6a4 100%);
            max-width: 100vw; /* Giới hạn chiều rộng tối đa bằng khung màn hình */
            overflow-x: hidden; /* Ngăn cuộn ngang nếu có phần tử vượt quá khung */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            color: #333;
            max-width: 100vw; /* Giới hạn chiều rộng tối đa bằng khung màn hình */
            overflow-x: hidden; /* Ngăn cuộn ngang nếu có phần tử vượt quá khung */
                
        }
            .bs {
    text-align: center;
    padding: 60px 0px 5px;
   
}

.bs .st h2 {
    font-size: 36px;
    color: #fff;
    margin-bottom: 15px;
    text-shadow: 0 0 10px rgba(255, 255, 255, 0.8);
}

.bs .st p {
    text-align: center;
    font-size: 16px;
    color: #666;
    max-width: 600px;
    margin: 10px auto;
}
.wi {
    padding: 10px -10px;
    border-top: 2px solid #24243e;
    display: flex;
    justify-content: flex-end;
    flex-wrap: wrap;
    
}

.wi .cl {
    list-style: none;
    text-align: right;
    padding-right: 50px;
}

.wi .cl li {
    margin-bottom: 10px;
    font-size: 14px;
    padding-left: 30px;
    color: #fff;
}
</style>
    </head>
    <body>
        <section class="bs">
            <div class="con">
                <div class="st">
                    <h2>Join Our Community Now!</h2>
                    <p>"If you want to go fast, go alone. If you want to go far, go together."</p>

                    <p>Success is better when shared! Become part of a thriving community where you can learn, grow, and achieve more—together.</p>
                </div>
                
            </div>
                <div class="wi">
                            <ul class="cl">
                                <li>Đại Học FPT Hà Nội<br>Group 2_SE1907</li>
                                <li>+84 969045182</li>
                                <li>yourmail@gmail.com</li>
                            </ul>
                        </div>
        </section>
    </body>
</html>
