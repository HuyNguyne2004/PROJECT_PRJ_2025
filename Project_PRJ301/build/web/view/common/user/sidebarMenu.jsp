<%-- 
    Document   : sidebarMenu
    Created on : Mar 11, 2025, 1:33:50 PM
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
        <div class="position-sticky py-4 px-3 sidebar-sticky">
            <ul class="nav flex-column h-100">

                <li class="nav-item">
                    <a class="nav-link active" href="${pageContext.request.contextPath}/user/course">
                        <i class="bi-wallet me-2"></i>
                        Course
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/view/user/dashboar_user/dashboard_profile.jsp">
                        <i class="bi-person me-2"></i>
                        Profile
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/view/user/dashboar_user/dashboard_setting.jsp">
                        <i class="bi-gear me-2"></i>
                        Settings
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="help-center.html">
                        <i class="bi-question-circle me-2"></i>
                        Help Center
                    </a>
                </li>


                <li class="nav-item border-top mt-auto pt-2">
                    <a class="nav-link" href="${pageContext.request.contextPath}/authen?action=logout">
                        <i class="bi-box-arrow-left me-2"></i>
                        Logout
                    </a>
                </li>
            </ul>
        </div>
    </body>
</html>
