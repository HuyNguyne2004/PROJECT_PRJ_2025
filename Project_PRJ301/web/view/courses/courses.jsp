<%-- 
    Document   : courses
<<<<<<< Updated upstream
    Created on : Mar 7, 2025, 1:01:07 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        body {
             margin: 0;
	        padding: 0;
	        font-family: 'Jost', sans-serif;
	        background: linear-gradient(to bottom, #0f0c29, #cc204c, #24243e);
        }
        .site-logo {
    position: fixed;  /* Giữ cố định khi cuộn */
    top: 20px;        /* Cách mép trên 20px */
    left: 20px;       /* Cách mép trái 20px */
    z-index: 999;     /* Ưu tiên hiển thị trên các phần tử khác */
}

.course-filter {
    display: flex;
    justify-content: space-evenly;
    gap: 30px;
    margin-bottom: 30px;
    position: relative;
    transform: translateY(10px)
}

.control:first-child {
    margin-left: auto;  /* Căn "All" sang trái */
    margin-right: auto; /* Căn "All" sang phải */ 
}
.control {
    background-color: transparent;
    border: none;
    color: #333;
    font-size: 16px;
    padding: 10px 20px;
    cursor: pointer;
    border-radius: 5px;
    text-decoration: none; /* Loại bỏ gạch chân mặc định */
    transition: color 0.3s;   
}
.control.active {
    color: #cc204c; /* Màu chữ khi chọn */
    text-decoration: underline; /* Gạch chân khi được chọn */
}
.control:hover {
    color: #cc204c; /* Màu chữ khi hover */
    text-decoration: underline; /* Gạch chân khi hover */
}
.control:not(.active) {
    color:#fff;
}
.container {
    width: 100vw; /* Chiếm toàn bộ chiều ngang */
    max-width: none; /* Không giới hạn kích thước */
    padding: 0; /* Loại bỏ padding */
    margin: 0; /* Loại bỏ margin */   
}
.header-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin: 0;
    padding: 0 20px; /* Căn sát lề trái và phải */
    width: 100%; /* Đảm bảo độ rộng full */
}
.search-container {
    color: white;
    text-align: center;
    padding: 0;
    margin-right: 20px;
}
.search-fields {
    display: flex;
    gap: 10px;
    align-items: center;
}
.search-input {
    padding: 10px;
    font-size: 16px;
    border-radius: 5px;
    border: 1px solid #ccc;
    width: 200px;
}
.search-btn {
    padding: 10px 20px;
    background-color: #d32f2f;
    color: white;
    font-weight: bold;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}
.search-btn:hover {
    background-color: #b71c1c;
}
        h1 {
            text-align:inherit;
            color: var(--text-color);
            font-weight: bold;
            color: #fff;
            margin-left: 20px;
        }
        .course-container {
            display: flex;
            flex-wrap: wrap;
            gap: 30px;
            justify-content: center;
            align-items: stretch;         
        }
        .course-card {
    display: flex;
    flex-direction: column; /* Xếp các phần tử theo chiều dọc */
    justify-content: space-between; /* Căn đều nội dung */
    width: 320px; /* Đảm bảo chiều rộng cố định */
    
    padding: 20px; /* Khoảng cách bên trong */
    border-radius: 10px; /* Bo góc */
    border: 0.5px solid #000; /* Viền */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5); /* Đổ bóng */
    background: linear-gradient(to bottom, #cc204c); /* Nền gradient */
    color: #fff; /* Màu chữ */
    font-size: 20px; /* Cỡ chữ */
    font-weight: bold; /* Độ đậm */
    transition: all 0.3s ease-in-out; /* Hiệu ứng chuyển động */
    overflow: hidden; /* Ẩn phần tràn */
}

        .course-card:hover {
            transform: translateY(-5px);
            background: var(--hover-bg);
        }
        .course-image {
            width: 100%;
            height: 180px;
            object-fit: cover;            
        }
.course-content {
            padding: 20px;
            color:#fff;
        }
        .course-title {
            font-size: 18px;
            font-weight: normal;
            color: var(--text-color);
            text-align:justify; 
            margin: 5px 0;
            padding: 10px;
            color:#fff;
        }
        .course-desc {
            font-size: 14px;
            color: #333;
            margin: 10px 0;
            color:#fff;
        }
        .btn-course {
            display: inline-block;
            padding: 10px;
            background: var(--secondary-color);
            color:#828080;
            text-decoration: none;
            border-radius: 5px;
            text-align:justify;
            width: 100%;
            font-weight: bold;
            border: 1px solid var(--border-color);
            box-shadow: 0 4px 8px 4px rgba(0, 0, 0, 0.2);
            background-color: #fff;
        }
        .btn-course:hover {
            background: var(--primary-color);
        }
        .navbar {
    position: sticky; /* Giữ cố định khi cuộn */
    top: 0; /* Cố định ở phía trên cùng */
    display: flex; /* Hiển thị các mục theo chiều ngang */
    justify-content: center; /* Căn giữa nội dung */
    background-color: black; /* Màu nền (có thể thay đổi) */
    padding: 10px 0; /* Tăng khoảng cách trên dưới */
    z-index: 1000; /* Đảm bảo luôn nằm trên các phần tử khác */
}

    </style>
    </head>
    <body>
        <div class="container">

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
                    <div class="col-lg-10 col-md-10">
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
    <body>
       <div class="container">
        <div class="header-container">
            <h1>COURSES</h1>
            <div class="course-filter">
                <button class="control active" data-filter="all">All</button>
                <button class="control" data-filter=".finance">Finance</button>
                <button class="control" data-filter=".design">Design</button>
                <button class="control" data-filter=".web">Web</button>
                <button class="control" data-filter=".photo">Photography</button>
            </div>             
            <div class="search-container">
                <div class="search-fields">
                    <input type="text" class="search-input" placeholder="Course">
                    <input type="text" class="search-input" placeholder="Category">
                    <button class="search-btn">Search Course</button>
                </div>
            </div>
        </div>        
        <div class="course-container">
            
            <div class="course-card">

                <img src="${pageContext.request.contextPath}/img/courses/1.jpg" class="course-image" >

                <div class="course-content">
                    <div class="course-title">Python for Beginners</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/2.jpg" class="course-image" >
                <div class="course-content">
                    <div class="course-title">HTML & CSS</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/3.jpg" class="course-image" >
                <div class="course-content">
                    <div class="course-title">JavaScript Essentials</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/4.jpg" class="course-image" >
                <div class="course-content">
                    <div class="course-title">ReactJS Advanced</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/5.jpg" class="course-image" >
                <div class="course-content">
                    <div class="course-title">Full-Stack Web Development</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>            
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/6.jpg" class="course-image">
                <div class="course-content">
                    <div class="course-title">Machine Learning Basics</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>            
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/7.jpg" class="course-image" >
                <div class="course-content">
                    <div class="course-title">Cybersecurity Fundamentals</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>            
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/8.jpg" class="course-image" >
                <div class="course-content">
                    <div class="course-title">Mobile App Development with Flutter</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>            
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/9.jpg" class="course-image" >
                <div class="course-content">
                    <div class="course-title">Financial Analysis and Modeling</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/10.jpg" class="course-image" >
                <div class="course-content">
                    <div class="course-title">Digital Marketing Mastery</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/11.jpg" class="course-image">
                <div class="course-content">
                    <div class="course-title">Business Strategy and Management</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/12.jpg" class="course-image">
                <div class="course-content">
                    <div class="course-title">FStock Market Investment</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/13.jpg" class="course-image">
                <div class="course-content">
                    <div class="course-title">Graphic Design with Adobe Photoshop</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/14.jpg" class="course-image">
                <div class="course-content">
                    <div class="course-title">UI/UX Design Essentials</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/15.jpg" class="course-image">
                <div class="course-content">
                    <div class="course-title">Photography and Editing</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/16.jpg" class="course-image">
                <div class="course-content">
                    <div class="course-title">Public Speaking Mastery</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/17.jpg" class="course-image">
                <div class="course-content">
                    <div class="course-title">Project Management Essentials</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/18.jpg" class="course-image">
                <div class="course-content">
                    <div class="course-title">Data Science with Python</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/19.jpg" class="course-image">
                <div class="course-content">
                    <div class="course-title">Artificial Intelligence Basics</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="${pageContext.request.contextPath}/img/courses/20.jpg" class="course-image">
                <div class="course-content">
                    <div class="course-title">Video Editing</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
    </div>
    </body>
</html>
