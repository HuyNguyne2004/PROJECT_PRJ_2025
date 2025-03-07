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
            font-size: 14px;
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
    </style>
    </head>
    <body>
        <div class="container">

    </style>    
    </head>
    <body>
       <div class="container">
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
                <img src="https://source.unsplash.com/320x200/?html,css" class="course-image" alt="Python for Beginners">
=======
                <img src="1.jpg" class="course-image" alt="Python for Beginners">
>>>>>>> Stashed changes
                <div class="course-content">
                    <div class="course-title">Learn the basics of Python programming</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?html,css" class="course-image" alt="HTML & CSS">
                <div class="course-content">
                    <div class="course-title">Build responsive websites from scratch</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?javascript,code" class="course-image" alt="JavaScript Essentials">
                <div class="course-content">
                    <div class="course-title">Master core JavaScript concepts</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?reactjs,programming" class="course-image" alt="ReactJS Advanced">
                <div class="course-content">
                    <div class="course-title">Dive deep into advanced React development</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?python" class="course-image" alt="Full-Stack Web Development">
                <div class="course-content">
                    <div class="course-title">Frontend and backend in one course</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>            
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?angular" class="course-image" alt="Machine Learning Basics">
                <div class="course-content">
                    <div class="course-title">An introduction to machine learning concepts</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>            
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?java" class="course-image" alt="Cybersecurity Fundamentals">
                <div class="course-content">
                    <div class="course-title">Learn how to protect digital assets</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>            
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?css,html" class="course-image" alt="Mobile App Development with Flutter">
                <div class="course-content">
                    <div class="course-title">Build cross-platform mobile applications</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>            
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?cloud-computing" class="course-image" alt="Financial Analysis and Modeling">
                <div class="course-content">
                    <div class="course-title">Analyze financial data with Excel</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?cloud-computing" class="course-image" alt="Digital Marketing Mastery ">
                <div class="course-content">
                    <div class="course-title">Boost online presence and drive sales</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?cloud-computing" class="course-image" alt="Business Strategy and Management">
                <div class="course-content">
                    <div class="course-title">Learn to develop winning strategies</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?cloud-computing" class="course-image" alt="FStock Market Investment">
                <div class="course-content">
                    <div class="course-title">Master the basics of trading and investing</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?cloud-computing" class="course-image" alt="Graphic Design with Adobe Photoshop">
                <div class="course-content">
                    <div class="course-title">Create stunning designs effortlessly</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?cloud-computing" class="course-image" alt="UI/UX Design Essentials">
                <div class="course-content">
                    <div class="course-title">Design user-friendly digital experiences</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?cloud-computing" class="course-image" alt="Photography and Editing">
                <div class="course-content">
                    <div class="course-title">Master the art of capturing and enhancing photos</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?cloud-computing" class="course-image" alt="Public Speaking Mastery ">
                <div class="course-content">
                    <div class="course-title">Build confidence and deliver impactful speeches</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?cloud-computing" class="course-image" alt="Project Management Essentials">
                <div class="course-content">
                    <div class="course-title"> Master project planning and execution</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?cloud-computing" class="course-image" alt="Data Science with Python">
                <div class="course-content">
                    <div class="course-title">Understand AI concepts and applications</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?cloud-computing" class="course-image" alt="Artificial Intelligence Basics">
                <div class="course-content">
                    <div class="course-title">Analyze financial data with Excel</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
            <div class="course-card">
                <img src="https://source.unsplash.com/320x200/?cloud-computing" class="course-image" alt="Video Editing with Adobe Premiere Pro ">
                <div class="course-content">
                    <div class="course-title">Create professional-quality videos</div>
                    
                    <a href="#" class="btn-course">Xem khóa học</a>
                </div>
            </div>
    </div>
<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes
    </body>
</html>
