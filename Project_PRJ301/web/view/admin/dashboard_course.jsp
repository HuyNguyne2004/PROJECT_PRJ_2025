<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Course Dashboard</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>

        <div class="container mt-5">
            <h2 class="text-center">Courses Dashboard</h2>

            <!-- Các nút bấm để chuyển sang các bảng khác -->
            <div class="text-center mb-4">
                <a href="${pageContext.request.contextPath}/admin/enrollments" class="btn btn-success">
                    <i class="fas fa-users"></i> Manage Enrollments
                </a>
                <a href="${pageContext.request.contextPath}/admin/user" class="btn btn-warning">
                    <i class="fas fa-user"></i> Manage Users
                </a>
                <a href="${pageContext.request.contextPath}/admin/room" class="btn btn-info">
                    <i class="fas fa-door-open"></i> Manage Rooms
                </a>
            </div>

            <!-- Bảng hiển thị danh sách các khóa học -->
            <table class="table table-bordered mt-4">
                <thead>
                    <tr>
                        <th>Course ID</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Instructor ID</th>
                        <th>Schedule</th>
                        <th>Max Students</th>
                        <th>Room ID</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Sử dụng JSTL để lặp qua listCourse -->
                    <c:forEach var="course" items="${listCourse}">
                        <tr>
                            <td>${course.course_id}</td>
                            <td>${course.title}</td>
                            <td>${course.description}</td>
                            <td>${course.instructor_id}</td>
                            <td>${course.schedule}</td>
                            <td>${course.max_students}</td>
                            <td>${course.room_id}</td>
                            <td>
                                <!-- Nút Edit -->
                                <form action="${pageContext.request.contextPath}/admin/course?action=edit" method="POST" class="d-inline">
                                    <input type="hidden" name="course_id" value="${course.course_id}">
                                    <button type="submit" class="btn btn-warning btn-sm">
                                        <i class="fas fa-edit"></i> Edit
                                    </button>
                                </form>

                                <!-- Nút Delete -->
                                <form action="${pageContext.request.contextPath}/admin/course?action=delete" method="POST" class="d-inline" onsubmit="return confirm('Are you sure you want to delete this course?');">
                                    <input type="hidden" name="course_id" value="${course.course_id}">
                                    <button type="submit" class="btn btn-danger btn-sm">
                                        <i class="fas fa-trash"></i> Delete
                                    </button>
                                </form>
                            </td>
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
