<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Dashboard</title>
        <!-- Thêm Bootstrap CSS để trang trí bảng -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>

        <div class="container mt-5">
            <h2 class="text-center">Enrollments Dashboard</h2>

            <!-- Các nút bấm để chuyển sang các bảng khác -->
            <div class="text-center mb-4">
                <a href="${pageContext.request.contextPath}/admin/course" class="btn btn-primary">
                    <i class="fas fa-book"></i> Manage Courses
                </a>
                <a href="${pageContext.request.contextPath}/admin/user" class="btn btn-warning">
                    <i class="fas fa-user"></i> Manage Users
                </a>
                <a href="${pageContext.request.contextPath}/admin/room" class="btn btn-info">
                    <i class="fas fa-door-open"></i> Manage Rooms
                </a>
            </div>

            <!-- Bảng hiển thị danh sách enrollments -->
            <table class="table table-bordered mt-4">
                <thead>
                    <tr>
                        <th>Enrollment ID</th>
                        <th>Student ID</th>
                        <th>Course ID</th>
                        <th>Enrolled Date</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Sử dụng JSTL để lặp qua listEnrollments -->
                    <c:forEach var="enrollment" items="${listEnrollments}">
                        <tr>
                            <td>${enrollment.enrollment_id}</td>
                            <td>${enrollment.student_id}</td>
                            <td>${enrollment.course_id}</td>
                            <td>${enrollment.enrolled_date}</td>
                            <td>${enrollment.status}</td>
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
