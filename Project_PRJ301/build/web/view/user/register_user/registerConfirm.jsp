<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="model.Users" %>  <%-- Đảm bảo đường dẫn chính xác --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    // Lấy thông tin user từ session
    HttpSession sessionObj = request.getSession();
    Object userObj = sessionObj.getAttribute("user"); 
    Users user = null;
    if (userObj instanceof Users) {
        user = (Users) userObj;
    }

    // Lấy courseId từ request và chuyển thành số nguyên
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
        <title>Xác nhận đăng ký</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    </head>
    <body>

        <div class="container mt-5">
            <h2>Xác nhận đăng ký khóa học</h2>
            <p>Bạn có chắc chắn muốn đăng ký khóa học <strong><%= (courseId > 0) ? courseId : "Không xác định" %></strong> không?</p>

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

            <!-- Form gửi dữ liệu đến Servlet để xử lý đăng ký -->
            <form action="${pageContext.request.contextPath}/user/registerCourse" method="POST">
                <input type="hidden" name="courseId" value="<%= courseId %>">
                <button type="submit" class="btn btn-primary">Xác nhận đăng ký</button>
                <a href="courses.jsp" class="btn btn-secondary">Hủy</a>
            </form>
        </div>

    </body>
</html>
