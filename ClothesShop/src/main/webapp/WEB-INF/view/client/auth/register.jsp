<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <title>Shoppers — Colorlib e-Commerce Template</title>
                    <meta charset="utf-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                    <link rel="stylesheet"
                        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
                    <link href="/img/favicon.png" rel="icon">
                    <link href="/img/apple-touch-icon.png" rel="apple-touch-icon">
                    <link href="https://fonts.gstatic.com" rel="preconnect">
                    <link
                        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
                        rel="stylesheet">
                    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
                    <link href="/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
                    <link href="/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
                    <link href="/vendor/quill/quill.snow.css" rel="stylesheet">
                    <link href="/vendor/quill/quill.bubble.css" rel="stylesheet">
                    <link href="/vendor/remixicon/remixicon.css" rel="stylesheet">
                    <link href="/vendor/simple-datatables/style.css" rel="stylesheet">
                    <link href="/css/style.css" rel="stylesheet">
                </head>

                <body>
                    <main>
                        <div class="container">
                            <section
                                class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
                                <div class="container">
                                    <div class="row justify-content-center">
                                        <div
                                            class="col-lg-6 col-md-8 d-flex flex-column align-items-center justify-content-center">
                                            <div class="d-flex justify-content-center py-4">
                                                <a href="index.html" class="logo d-flex align-items-center w-auto">
                                                    <img src="/img/logo.png" alt="">
                                                    <span class="d-none d-lg-block">NiceAdmin</span>
                                                </a>
                                            </div>
                                            <div class="card mb-3">
                                                <div class="card-body">
                                                    <div class="pt-4 pb-2">
                                                        <h5 class="card-title text-center pb-0 fs-4">Tạo tài khoản</h5>
                                                        <p class="text-center small">Nhập thông tin để tạo tài khoản</p>
                                                    </div>
                                                    <form:form class="row g-3 needs-validation" novalidate="novalidate"
                                                        method="post" action="/register" modelAttribute="registerDTO">

                                                        <c:set var="errorFirstName">
                                                            <form:errors path="firstName" cssClass="invalid-feedback" />
                                                        </c:set>

                                                        <c:set var="errorLastName">
                                                            <form:errors path="lastName" cssClass="invalid-feedback" />
                                                        </c:set>

                                                        <c:set var="errorEmail">
                                                            <form:errors path="email" cssClass="invalid-feedback" />
                                                        </c:set>

                                                        <c:set var="errorUsername">
                                                            <form:errors path="username" cssClass="invalid-feedback" />
                                                        </c:set>

                                                        <c:set var="errorPassword">
                                                            <form:errors path="password" cssClass="invalid-feedback" />
                                                        </c:set>

                                                        <c:set var="errorConfirmPassword">
                                                            <form:errors path="confirmPassword"
                                                                cssClass="invalid-feedback" />
                                                        </c:set>

                                                        <div class="col-md-6">
                                                            <label for="firstName" class="form-label">Họ</label>
                                                            <form:input
                                                                cssClass="form-control ${not empty errorFirstName ? 'is-invalid' : ''}"
                                                                type="text" path="firstName" />
                                                            ${errorFirstName}
                                                        </div>

                                                        <div class="col-md-6">
                                                            <label for="lastName" class="form-label">Tên</label>
                                                            <form:input type="text"
                                                                cssClass="form-control ${not empty errorLastName ? 'is-invalid' : ''}"
                                                                path="lastName" />
                                                            ${errorLastName}
                                                        </div>

                                                        <div class="col-12">
                                                            <label for="yourEmail" class="form-label">Email</label>
                                                            <form:input type="email"
                                                                cssClass="form-control ${not empty errorEmail ? 'is-invalid' : ''}"
                                                                path="email" />
                                                            ${errorEmail}
                                                        </div>

                                                        <div class="col-12">
                                                            <label for="yourUsername" class="form-label">Biệt
                                                                danh</label>
                                                            <form:input type="text"
                                                                cssClass="form-control ${not empty errorUsername ? 'is-invalid' : ''}"
                                                                path="username" />
                                                            ${errorUsername}
                                                        </div>

                                                        <div class="col-md-6">
                                                            <label for="yourPassword" class="form-label">Mật
                                                                khẩu</label>
                                                            <form:input type="password"
                                                                cssClass="form-control ${not empty errorPassword ? 'is-invalid' : ''}"
                                                                path="password" />
                                                            ${errorPassword}
                                                        </div>

                                                        <div class="col-md-6">
                                                            <label for="confirmPassword" class="form-label">Xác nhận mật
                                                                khẩu</label>
                                                            <form:input type="password"
                                                                cssClass="form-control ${not empty errorConfirmPassword ? 'is-invalid' : ''}"
                                                                path="confirmPassword" />
                                                            ${errorConfirmPassword}

                                                        </div>
                                                        <div class="col-12">
                                                            <button class="btn btn-primary w-100" type="submit">Tạo tài
                                                                khoản</button>
                                                        </div>
                                                    </form:form>
                                                    <div class="col-12 text-center">
                                                        <p class="small mb-0">Đã có tài khoản? <a href="/login">Đăng
                                                                nhập</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="credits">
                                                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </main>
                    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
                            class="bi bi-arrow-up-short"></i></a>
                    <script src="/js/jquery-3.3.1.min.js"></script>
                    <script src="/js/jquery-ui.js"></script>
                    <script src="/js/popper.min.js"></script>
                    <script src="/js/bootstrap.min.js"></script>
                    <script src="/js/owl.carousel.min.js"></script>
                    <script src="/js/jquery.magnific-popup.min.js"></script>
                    <script src="/js/aos.js"></script>
                    <script src="/js/main.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
                </body>

                </html>