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
                                <h5> Lập trình & Công nghệ </h5>
                                <p>Khóa học giúp bạn nắm vững các ngôn ngữ lập trình và công nghệ mới, phát triển các ứng dụng sáng tạo và tối ưu hóa giải pháp kỹ thuật.</p>
                                <span>08 Courses</span>
                            </div>
                        </div>
                    </div>
                    <!-- categorie -->
                    <div class="col-lg-3 col-md-3">
                        <div class="categorie-item">
                            <div class="ci-thumb set-bg" data-setbg="${pageContext.request.contextPath}/img/categories/2.jpg"></div>
                            <div class="ci-text">
                                <h5> Kinh doanh & Tài chính </h5>
                                <p>Cung cấp kiến thức về chiến lược tài chính, đầu tư, phân tích rủi ro và quản lý tài chính trong môi trường kinh doanh cạnh tranh.</p>
                                <span>03 Courses</span>
                            </div>
                        </div>
                    </div>
                    <!-- categorie -->
                    <div class="col-lg-3 col-md-3">
                        <div class="categorie-item">
                            <div class="ci-thumb set-bg" data-setbg="${pageContext.request.contextPath}/img/categories/3.jpg"></div>
                            <div class="ci-text">
                                <h5> Thiết kế & Sáng tạo         </h5>
                                <br>
                                <p>Giới thiệu kỹ năng thiết kế đồ họa, giao diện người dùng, giúp bạn tạo ra những sản phẩm sáng tạo, phù hợp với xu hướng hiện đại.</p>
                                <span>03 Courses</span>
                            </div>
                        </div>
                    </div>
                    <!-- categorie -->
                    <div class="col-lg-3 col-md-3">
                        <div class="categorie-item">
                            <div class="ci-thumb set-bg" data-setbg="${pageContext.request.contextPath}/img/categories/4.jpg"></div>
                            <div class="ci-text">
                                <h5> Phát triển cá nhân </h5>
                                <br>
                                <p>Tăng cường khả năng tự nhận thức, phát triển kỹ năng mềm và xây dựng thói quen tích cực để đạt được mục tiêu cá nhân và nghề nghiệp.</p>
                                <span>05 Courses</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
