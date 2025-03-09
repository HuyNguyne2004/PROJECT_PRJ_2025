<!doctype html>
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
                    <div class="position-sticky py-4 px-3 sidebar-sticky">
                        <ul class="nav flex-column h-100">

                            <li class="nav-item">
                                <a class="nav-link active" href="wallet.html">
                                    <i class="bi-wallet me-2"></i>
                                    Course
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="profile.html">
                                    <i class="bi-person me-2"></i>
                                    Profile
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="setting.html">
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
                                <a class="nav-link" href="#">
                                    <i class="bi-box-arrow-left me-2"></i>
                                    Logout
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>

                <main class="main-wrapper col-md-9 ms-sm-auto py-4 col-lg-9 px-md-4 border-start">
                    <div class="title-group mb-3">
                        <h1 class="h2 mb-0">Course</h1>
                    </div>

                    <div class="row my-4">
                        <div class="col-lg-12 col-12">
                            <div class="custom-block bg-white">
                                <h5 class="mb-4">Account Activities</h5>

                                <div class="table-responsive">
                                    <table class="account-table table">
                                        <thead>
                                            <tr>
                                                <th scope="col">Date</th>

                                                <th scope="col">Time</th>

                                                <th scope="col">Course name</th>

                                                <th scope="col">Course id</th>

                                                <th scope="col">xxx</th>

                                                <th scope="col">xxx</th>

                                                <th scope="col">Status</th>

                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td scope="row">July 5, 2023</td>

                                                <td scope="row">10:00 PM</td>

                                                <td scope="row">Shopping</td>

                                                <td scope="row">C2C Transfer</td>

                                                <td class="text-danger" scope="row">
                                                    <span class="me-1">-</span>
                                                    $100.00
                                                </td>

                                                <td scope="row">$5,500.00</td>

                                                <td scope="row">
                                                    <span class="badge text-bg-danger">
                                                        Pending
                                                    </span>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td scope="row">July 2, 2023</td>

                                                <td scope="row">10:42 AM</td>

                                                <td scope="row">Food Delivery</td>

                                                <td scope="row">Mobile Reload</td>

                                                <td class="text-success" scope="row">
                                                    <span class="me-1">+</span>
                                                    $250
                                                </td>

                                                <td scope="row">$5,600.00</td>

                                                <td scope="row">
                                                    <span class="badge text-bg-success">
                                                        Success
                                                    </span>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td scope="row">June 28, 2023</td>

                                                <td scope="row">8:20 PM</td>

                                                <td scope="row">Billing</td>

                                                <td scope="row">Goverment</td>

                                                <td class="text-success" scope="row">
                                                    <span class="me-2">+</span>$50</td>

                                                <td scope="row">$5,350.00</td>

                                                <td scope="row">
                                                    <span class="badge text-bg-success">
                                                        Success
                                                    </span>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td scope="row">June 24, 2023</td>

                                                <td scope="row">10:48 PM</td>

                                                <td scope="row">Shopee</td>

                                                <td scope="row">QR Code</td>

                                                <td class="text-danger" scope="row">
                                                    <span class="me-2">-</span>$380</td>

                                                <td scope="row">$5,300.00</td>

                                                <td scope="row">
                                                    <span class="badge text-bg-dark">
                                                        Cancelled
                                                    </span>
                                                </td>
                                            </tr>

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
</body>
</html>