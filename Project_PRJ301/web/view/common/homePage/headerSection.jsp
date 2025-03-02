<%-- 
    Document   : headerSection
    Created on : Mar 2, 2025, 11:40:31 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header class="header-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        <div class="site-logo">
                            <img src="${pageContext.request.contextPath}/img/logo.png" alt="">
                        </div>
                        <div class="nav-switch">
                            <i class="fa fa-bars"></i>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-9">
                        <a href="authen?action=login" class="site-btn header-btn">Login</a>
                        <nav class="main-menu">
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li><a href="#">About us</a></li>
                                <li><a href="courses.html">Courses</a></li>
                                <li><a href="blog.html">News</a></li>
                                <li><a href="contact.html">Contact</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
    </body>
</html>
