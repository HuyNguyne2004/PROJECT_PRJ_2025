<%-- 
    Document   : dashboard
    Created on : Mar 6, 2025, 12:10:06 AM
    Author     : Admin
--%>

<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Dashboard</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>

        <div class="container mt-5">
            <h2 class="text-center">Admin Dashboard</h2>

            <div class="row">
                <!-- Course Management Button -->
                <div class="col-md-3 mb-3">
                    <a href="${pageContext.request.contextPath}/admin/course" class="btn btn-primary btn-block">
                        <i class="fas fa-book"></i> Manage Courses
                    </a>
                </div>

                <!-- Enrollment Management Button -->
                <div class="col-md-3 mb-3">
                    <a href="${pageContext.request.contextPath}/admin/enrollments" class="btn btn-success btn-block">
                        <i class="fas fa-users"></i> Manage Enrollments
                    </a>
                </div>

                <!-- User Management Button -->
                <div class="col-md-3 mb-3">
                    <a href="${pageContext.request.contextPath}/admin/user" class="btn btn-warning btn-block">
                        <i class="fas fa-user"></i> Manage Users
                    </a>
                </div>

                <!-- Room Management Button -->
                <div class="col-md-3 mb-3">
                    <a href="${pageContext.request.contextPath}/admin/room" class="btn btn-info btn-block">
                        <i class="fas fa-door-open"></i> Manage Rooms
                    </a>
                </div>
            </div>

            <!-- Optionally you can add more sections here -->
        </div>

        <!-- Bootstrap JS and Font Awesome for icons -->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>

