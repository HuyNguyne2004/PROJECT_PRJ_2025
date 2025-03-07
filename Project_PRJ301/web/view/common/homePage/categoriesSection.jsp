<%-- 
    Document   : categoriesSection
    Created on : Mar 2, 2025, 9:20:11 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <section class="categories-section spad">
            <div class="container">
                <div class="section-title">
                    <h2>Our Course Categories</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. Suspendisse cursus faucibus finibus.</p>
                </div>
                <div class="row">
                    <!-- categorie -->
                    <div class="col-lg-3 col-md-3">
                        <div class="categorie-item">
                            <div class="ci-thumb set-bg" data-setbg="${pageContext.request.contextPath}/img/categories/1.jpg"></div>
                            <div class="ci-text">
                                <h5> "Programming & Technology </h5>
                                <p>Master programming languages and develop creative technical solutions.</p>
                                <span>08 Courses</span>
                            </div>
                        </div>
                    </div>
                    <!-- categorie -->
                    <div class="col-lg-3 col-md-3">
                        <div class="categorie-item">
                            <div class="ci-thumb set-bg" data-setbg="${pageContext.request.contextPath}/img/categories/2.jpg"></div>
                            <div class="ci-text">
                                <h5> Business & Finance </h5>
                                <p>Learn financial strategies, investment, and risk management.</p>
                                <span>03 Courses</span>
                            </div>
                        </div>
                    </div>
                    <!-- categorie -->
                    <div class="col-lg-3 col-md-3">
                        <div class="categorie-item">
                            <div class="ci-thumb set-bg" data-setbg="${pageContext.request.contextPath}/img/categories/3.jpg"></div>
                            <div class="ci-text">
                                <h5>Design & Creativity</h5>
                                <p> Develop graphic design skills for modern, creative products. </p>
                                <span>03 Courses</span>
                            </div>
                        </div>
                    </div>
                    <!-- categorie -->
                    <div class="col-lg-3 col-md-3">
                        <div class="categorie-item">
                            <div class="ci-thumb set-bg" data-setbg="${pageContext.request.contextPath}/img/categories/4.jpg"></div>
                            <div class="ci-text">
                                <h5>Personal Development</h5>
                                <p> Enhance self-awareness and build positive, goal-oriented habits.</p>
                                <span>05 Courses</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
