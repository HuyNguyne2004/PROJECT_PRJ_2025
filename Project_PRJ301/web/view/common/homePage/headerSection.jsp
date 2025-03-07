<%-- 
    Document   : headerSection
    Created on : Mar 2, 2025, 11:40:31 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <div class="col-lg-2 col-md-2">
                        <div class="site-logo">
                            <img src="${pageContext.request.contextPath}/img/logo.png" alt="">
                        </div>
                        <div class="nav-switch">
                            <i class="fa fa-bars"></i>
                        </div>
                    </div>
                    <div class="col-lg-10 col-md-10">
                        <c:if test="${user == null}">
                            <a href="${pageContext.request.contextPath}/authen?action=login" class="site-btn header-btn">Login</a>
                        </c:if>
                        <a href="${pageContext.request.contextPath}/authen?action=sign_up" class="site-btn header-btn">Sign up</a>
                        <c:if test="${user != null}">
                            <c:if test="${user.role == 'ADMIN'}">
                                <a href="${pageContext.request.contextPath}/admin/dashboard">
                                    My Account
                                </a>
                            </c:if>

                            <c:if test="${user.role == 'STUDENT'}">
                                <a href="${pageContext.request.contextPath}/dashboard">
                                    My Account
                                </a>
                            </c:if>

                            <a href="${pageContext.request.contextPath}/authen?action=logout" class="site-btn header-btn">Log out</a>
                        </c:if>
                        <nav class="main-menu">
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li><a href="#">About us</a></li>

                                <li><a href="https://khokhoahoc.org/" target="_blank">Courses</a></li>

                                <li><a href="${pageContext.request.contextPath}/authen?action=courses">Courses</a></li>

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
