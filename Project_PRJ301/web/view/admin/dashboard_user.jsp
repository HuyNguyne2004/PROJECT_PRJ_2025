<%-- 
    Document   : dashboard_user
    Created on : Mar 6, 2025, 12:53:53 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Users Dashboard</title>
        <!-- Thêm Bootstrap CSS để trang trí bảng -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>

        <div class="container mt-5">
            <h2 class="text-center">Users Dashboard</h2>

            <!-- Các nút chuyển sang các bảng khác -->
            <div class="text-center mb-4">
                <a href="${pageContext.request.contextPath}/admin/course" class="btn btn-primary">
                    <i class="fas fa-book"></i> Manage Courses
                </a>
                <a href="${pageContext.request.contextPath}/admin/enrollments" class="btn btn-success">
                    <i class="fas fa-users"></i> Manage Enrollments
                </a>
                <a href="${pageContext.request.contextPath}/admin/room" class="btn btn-info">
                    <i class="fas fa-door-open"></i> Manage Rooms
                </a>
            </div>

            <!-- Bảng hiển thị danh sách người dùng -->
            <table class="table table-bordered mt-4">
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Full Name</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Role</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Sử dụng JSTL để lặp qua listUser -->
                <c:forEach var="user" items="${listUser}">
                    <tr>
                        <td>${user.user_id}</td>
                        <td>${user.full_name}</td>
                        <td>${user.email}</td>
                        <td>${user.password}</td>
                        <td>${user.role}</td>
                        <td>${user.status}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

        <!-- Thêm các thư viện cần thiết -->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    </body>
</html>
