<%-- 
    Document   : headerSection
    Created on : Mar 2, 2025, 11:40:31 AM
    Author     : Admin
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .TRANGCHU {
    display: flex; /* Align items in a row */
    justify-content: flex-start; /* Align items to the left */
    align-items: center; /* Center items vertically */
    text-decoration: none;
}


.TRANGCHU a {
    margin-right: 20px; 
    text-decoration: none;
}

.MENU ul {
    display: flex;
    align-items: center;
    list-style-type: none; /* Remove bullet points */
    padding: 0;
    margin: 0;
}

        .MENU {
            text-align: center; /* cÄn giá»¯a menu tá»ng thá» */
            margin-top: 2px; /* Äáº©y cáº£ menu xuá»ng phÃ­a dÆ°á»i */
            flex-grow: 1;
            display: flex;
            justify-content: center;
            justify-content: flex-start;
            padding-left: 10px;
        }


        .MENU ul {
            display: flex;
            align-items: center;
            list-style-type: none; /* loáº¡i bá» dáº¥u cháº¥m cá»§a danh sÃ¡ch */
            padding: 0;
            margin: 0;

        }


        .MENU ul li {
            display: inline-block; /* menu náº±m ngang */
            margin: 0 25px; /* khoáº£ng cÃ¡ch giá»¯a cÃ¡c má»¥c menu */
        }

        .MENU ul li a {
            color: #fff; /* mÃ u chá»¯ máº·c Äá»nh */
            text-decoration: none; /* bá» gáº¡ch chÃ¢n */
            transition: color 0.3s ease;
            font-size: 18px;
        }
        .MENU ul li a:hover,
        .MENU ul li a.active {
            color: #cc204c; /* mÃ u khi hover hoáº·c active */
        }
        .admin {
            text-align: center; /* cÄn giá»¯a menu tá»ng thá» */
            flex-grow: 1;
            display: flex;
            justify-content: center;
            justify-content: flex-start;
            padding-left: 70px;
            display: inline-block; /* menu náº±m ngang */
            margin: 0 60px 0 20px; /* khoáº£ng cÃ¡ch giá»¯a cÃ¡c má»¥c menu */
            display: flex;
            align-items: center;
            list-style-type: none; /* loáº¡i bá» dáº¥u cháº¥m cá»§a danh sÃ¡ch */
            padding: 0;
            display: inline-block; /* menu náº±m ngang */ 
            color: #fff; 
            text-decoration: none; /* bá» gáº¡ch chÃ¢n */
            transition: color 0.3s ease;
            font-size: 18px;
        }
        
       
        </style>
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
                        <nav class="MENU">
                            <ul>
                                <li><strong><a href="${pageContext.request.contextPath}/authen?action=home">Home</a></strong></li>   
                                <li><strong><a href="view/courses/courses.jsp">Courses</a></strong></li>
                                <li><strong><a href="contact.html">Contact</a></strong></li>
                            </ul>
                        </nav>
                    <div class="TRANGCHU">
                        <c:if test="${user == null}">
                            <a href="${pageContext.request.contextPath}/authen?action=login" class="site-btn header-btn">Login</a>
                        </c:if>
                            
                        
                        <c:if test="${user != null}">
                            
                            <c:if test="${user.role == 'ADMIN'}">
                                <a href="${pageContext.request.contextPath}/admin/dashboard">
                                    <li class="admin"><strong>My Account</strong></li>
                                </a>
                            </c:if>

                            <c:if test="${user.role == 'STUDENT'}">
<<<<<<< HEAD
                                <a href="${pageContext.request.contextPath}/view/user/dashboar_user/dashboard_user.jsp">
                                   <li class="admin"><strong>My Account</strong></li>
=======
                                <a href="${pageContext.request.contextPath}/user/course">
                                    My Account
>>>>>>> efd4cba7778f4028de96bfcbef08514a5650e4e1
                                </a>
                            </c:if>
                            
                            <a href="${pageContext.request.contextPath}/authen?action=logout" class="site-btn header-btn">Log out</a>
                           
                        </c:if>
                            <a href="${pageContext.request.contextPath}/authen?action=sign_up" class="site-btn header-btn">Sign up</a>

                    </div>
                                
                </div>
            </div>
        </header>
    </body>
</html>
