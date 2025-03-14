<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Mini Finance - Wallet Page</title>

        <!-- CSS FILES -->      
        <link rel="preconnect" href="https://fonts.googleapis.com">

        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;400;700&display=swap" rel="stylesheet">

        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

        <link href="${pageContext.request.contextPath}/css/bootstrap-icons.css" rel="stylesheet">

        <link href="${pageContext.request.contextPath}/css/apexcharts.css" rel="stylesheet">

        <link href="${pageContext.request.contextPath}/css/tooplate-mini-finance.css" rel="stylesheet">
        <!--
        
        Tooplate 2135 Mini Finance
        
        https://www.tooplate.com/view/2135-mini-finance
        
        Bootstrap 5 Dashboard Admin Template
        
        -->
    </head>
    <style>
        /* Gi?i h?n chi?u r?ng sidebar */
        #sidebarMenu {
            width: 250px; /* Gi?m k�ch th??c sidebar */
            min-width: 250px;
            max-width: 250px;
        }

        /* ?i?u ch?nh layout c?a n?i dung ch�nh */
        .main-wrapper {
            margin-left: 250px; /* Gi? kho?ng c�ch v?i sidebar */
            padding: 20px;
            overflow-x: auto; /* Tr�nh tr�n ngang */
        }

        /* ??m b?o b?ng kh�ng b? tr�n ra ngo�i */
        .account-table {
            width: 100%;
            max-width: 100%;
            overflow-x: auto;
        }

        /* N?u v?n b? tr�n, th�m l?p n�y v�o div ch?a b?ng */
        .table-responsive {
            overflow-x: auto;
            max-width: 100%;
        }
    </style>

    <body>
        <header class="navbar sticky-top flex-md-nowrap">
            <div class="col-md-3 col-lg-3 me-0 px-3 fs-6">
                <a class="navbar-brand" href="wallet.html">
                    <i class="bi-box"></i>
                    Mini Finance
                </a>
            </div>

            <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>


            <div class="navbar-nav me-lg-2">
                <div class="nav-item text-nowrap d-flex align-items-center">

                    <div class="dropdown px-3">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="images/medium-shot-happy-man-smiling.jpg" class="profile-image img-fluid" alt="">
                        </a>
                        <ul class="dropdown-menu bg-white shadow">
                            <li>
                                <div class="dropdown-menu-profile-thumb d-flex">
                                    <img src="images/medium-shot-happy-man-smiling.jpg" class="profile-image img-fluid me-3" alt="">

                                    <div class="d-flex flex-column">
                                        <small>Thomas</small>
                                        <a href="#">thomas@site.com</a>
                                    </div>
                                </div>
                            </li>

                            <li class="border-top mt-3 pt-2 mx-4">
                                <a class="dropdown-item ms-0 me-0" href="#">
                                    <i class="bi-box-arrow-left me-2"></i>
                                    Logout
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>

        <div class="container-fluid">
            <div class="row">
                <nav id="sidebarMenu" class="col-md-3 col-lg-3 d-md-block sidebar collapse">
                    <jsp:include page="../../common/user/sidebarMenu.jsp"></jsp:include>
                    </nav>

                    <main class="main-wrapper col-md-9 ms-sm-auto py-4 col-lg-9 px-md-4 border-start">
                        <div class="title-group mb-3">
                            <h1 class="h2 mb-0">Course</h1>
                        </div>

                        <div class="row my-4">
                            <div class="col-lg-12 col-12">
                                <div class="custom-block bg-white">
<<<<<<< HEAD
                                    <h5 class="mb-4">Account Activities</h5>

                                    <div class="table-responsive">
                                        <table class="account-table table">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Enrollment ID</th>
                                                    <th scope="col">Student ID</th>
                                                    <th scope="col">Course ID</th>
                                                    <th scope="col">Enrolled Date</th>
                                                    <th scope="col">Status</th>
                                                    <th scope="col">Action</th> <!-- C?t h�nh ??ng -->
                                                </tr>
                                            </thead>
                                            <tbody>
=======
                                <c:if test="${not empty message}">
                                    <div class="alert alert-success" role="alert">
                                        ${message}
                                    </div>
                                </c:if>

                                <c:if test="${not empty error}">
                                    <div class="alert alert-danger" role="alert">
                                        ${error}
                                    </div>
                                </c:if>
                                <h5 class="mb-4">Account Activities</h5>

                                <div class="table-responsive">
                                    <table class="account-table table">
                                        <thead>
                                            <tr>
                                                <th scope="col">Enrollment ID</th>
                                                <th scope="col">Student ID</th>
                                                <th scope="col">Course ID</th>
                                                <th scope="col">Enrolled Date</th>
                                                <th scope="col">Status</th>
                                                <th scope="col">Action</th> <!-- C?t h�nh ??ng -->
                                            </tr>
                                        </thead>
                                        <tbody>
>>>>>>> efd4cba7778f4028de96bfcbef08514a5650e4e1
                                            <c:choose>
                                                <c:when test="${not empty listCourseUser}">
                                                    <c:forEach var="enrollment" items="${listCourseUser}">
                                                        <tr>
                                                            <td>${enrollment.enrollment_id}</td>
                                                            <td>${enrollment.student_id}</td>
                                                            <td>${enrollment.course_id}</td>
                                                            <td>${enrollment.enrolled_date}</td>
                                                            <td>
                                                                <span class="badge ${enrollment.status eq 'ENROLLED' ? 'text-bg-success' :
                                                                                     enrollment.status eq 'WAITLISTED' ? 'text-bg-danger' :
                                                                                     'text-bg-secondary'}">
                                                                          ${enrollment.status}
                                                                      </span>
                                                                </td>
                                                                <td>
                                                                    <!-- N�t Delete v?i h?p tho?i x�c nh?n -->
<<<<<<< HEAD
                                                                    <form action="deleteEnrollment" method="post" style="display:inline;">
=======
                                                                    <form action="${pageContext.request.contextPath}//user/course?action=delete" method="post" style="display:inline;">
>>>>>>> efd4cba7778f4028de96bfcbef08514a5650e4e1
                                                                        <input type="hidden" name="enrollment_id" value="${enrollment.enrollment_id}">
                                                                        <button type="submit" class="btn btn-danger btn-sm"
                                                                                onclick="return confirmDelete('${enrollment.enrollment_id}')">
                                                                            Delete
                                                                        </button>
                                                                    </form>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <tr>
                                                            <td colspan="6" class="text-center">Kh�ng c� d? li?u</td>
                                                        </tr>
                                                    </c:otherwise>
                                                </c:choose>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                            </div>

                        </div>

                </div>

                <footer class="site-footer">
                    <div class="container">
                        <div class="row">

                            <div class="col-lg-12 col-12">
                                <p class="copyright-text">Copyright � Mini Finance 2048 
                                    - Design: <a rel="sponsored" href="https://www.tooplate.com" target="_blank">Tooplate</a></p>
                            </div>

                        </div>
                    </div>
                </footer>
            </main>

        </div>
    </div>

    <!-- JAVASCRIPT FILES -->
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/apexcharts.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/custom.js"></script>
    <script>
<<<<<<< HEAD
    function confirmDelete(enrollmentID) {
        return confirm("B?n c� ch?c ch?n mu?n x�a Enrollment ID " + enrollmentID + " kh�ng?");
    }
=======
                                                                                    function confirmDelete(enrollmentID) {
                                                                                        return confirm("B?nn c� ch?c ch?n mu?n x�a Enrollment ID " + enrollmentID + " kh�ng?");
                                                                                    }
>>>>>>> efd4cba7778f4028de96bfcbef08514a5650e4e1
    </script>
</body>
</html>