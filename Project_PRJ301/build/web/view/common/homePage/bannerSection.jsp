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
            .banner-section {
    text-align: center;
    padding: 60px 0px 5px;
   
}

.banner-section .section-title h2 {
    font-size: 36px;
    color: #fff;
    margin-bottom: 15px;
    text-shadow: 0 0 10px rgba(255, 255, 255, 0.8);
}

.banner-section .section-title p {
    text-align: center;
    font-size: 16px;
    color: #666;
    max-width: 600px;
    margin: 10px auto;
}
.text-center {
    padding-top: 40px;
}

.text-center .site-btn {
    display: center;
    margin-top: 30px;
    background: var(--secondary-color);
    color: #828080;
    text-decoration: none;
    text-align: justify;
    font-weight: bold;
    border: 1px solid var(--border-color);
    box-shadow: 0 4px 8px 4px rgba(0, 0, 0, 0.2);
    padding: 12px 24px;
    display: inline-block;
    background-color: #fff;
}
.text-center .site-btn:hover {
    background-color: #fff;
}
</style>
    </head>
    <body>
        <section class="banner-section spad">
            <div class="container">
                <div class="section-title mb-0 pb-2">
                    <h2>Join Our Community Now!</h2>
                    <p>"If you want to go fast, go alone. If you want to go far, go together."</p>

                    <p>Success is better when shared! Become part of a thriving community where you can learn, grow, and achieve more—together.</p>
                </div>
                
            </div>
                <div class="widget-item">
                            <ul class="contact-list">
                                <li>1481 Creekside Lane <br>Avila Beach, CA 931</li>
                                <li>+53 345 7953 32453</li>
                                <li>yourmail@gmail.com</li>
                            </ul>
                        </div>
        </section>
    </body>
</html>
