<%-- 
    Document   : heroSection
    Created on : Mar 2, 2025, 11:41:06 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <section class="hero-section set-bg" data-setbg="${pageContext.request.contextPath}/img/bg.jpg">
            <div class="container">
                <div class="hero-text text-white">
                    <h2>Get The Best Free Online Courses</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris scelerisque, at rutrum nulla <br> dictum. Ut ac ligula sapien. Suspendisse cursus faucibus finibus.</p>
                </div>
                <div class="row">
                    <div class="col-lg-10 offset-lg-1">
                        <form class="intro-newslatter">
                            <input type="text" placeholder="Name">
                            <input type="text" class="last-s" placeholder="E-mail">
                            <button class="site-btn">Sign Up Now</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
