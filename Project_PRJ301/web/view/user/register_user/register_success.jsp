<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="model.Users" %>

<%
    // Lấy thông tin user từ session
    HttpSession sessionObj = request.getSession();
    Object userObj = sessionObj.getAttribute("user"); 
    Users user = null;
    if (userObj instanceof Users) {
        user = (Users) userObj;
    }

    // Lấy courseId từ request
    int courseId = 0;
    try {
        courseId = Integer.parseInt(request.getParameter("courseId"));
    } catch (NumberFormatException e) {
        courseId = 0; // Nếu lỗi, đặt về 0
    }
%>

<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Đăng ký thành công</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    </head>
    <body>

        <div class="container mt-5">
            <div class="alert alert-success text-center">
                <h2>🎉 Đăng ký thành công!</h2>
                <p>Bạn đã đăng ký khóa học <strong>#<%= courseId %></strong> thành công.</p>
            </div>

            <p><strong>Thông tin của bạn:</strong></p>
            <ul>
                <% if (user != null) { %>
                <li><strong>Họ tên:</strong> <%= user.getFull_name() %></li>
                <li><strong>Email:</strong> <%= user.getEmail() %></li>
                <li><strong>Vai trò:</strong> <%= user.getRole() %></li>
                <li><strong>Trạng thái:</strong> <%= user.getStatus() %></li>
                    <% } else { %>
                <li><strong>Chưa đăng nhập!</strong></li>
                    <% } %>
            </ul>

            <div class="text-center mt-4">
                <a href="${pageContext.request.contextPath}/view/courses/courses.jsp" class="btn btn-primary">🏫 Quay lại danh sách khóa học</a>
                
            </div>
        </div>

    </body>
</html>
