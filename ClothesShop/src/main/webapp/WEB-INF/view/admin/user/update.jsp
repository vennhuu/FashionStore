<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta content="width=device-width, initial-scale=1.0" name="viewport">

                <title>Thông tin người dùng</title>
                <meta content="" name="description">
                <meta content="" name="keywords">

                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

                <!-- Favicons -->
                <link href="/img/favicon.png" rel="icon">
                <link href="/img/apple-touch-icon.png" rel="apple-touch-icon">

                <!-- Google Fonts -->
                <link href="https://fonts.gstatic.com" rel="preconnect">
                <link
                    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
                    rel="stylesheet">

                <!-- Vendor CSS Files -->
                <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
                <link href="/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
                <link href="/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
                <link href="/vendor/quill/quill.snow.css" rel="stylesheet">
                <link href="/vendor/quill/quill.bubble.css" rel="stylesheet">
                <link href="/vendor/remixicon/remixicon.css" rel="stylesheet">
                <link href="/vendor/simple-datatables/style.css" rel="stylesheet">

                <!-- Template Main CSS File -->
                <link href="/css/style.css" rel="stylesheet">

            </head>

            <body>

                <!-- ======= Header ======= -->
                <jsp:include page="../layout/header.jsp" />

                <!-- ======= Sidebar ======= -->
                <jsp:include page="../layout/sidebar.jsp" />

                <main id="main" class="main">

                    <div class="pagetitle">
                        <h1>Thông tin người dùng</h1>
                        <nav>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="/dashboard">Trang chủ</a></li>
                                <li class="breadcrumb-item">Người dùng</li>
                                <li class="breadcrumb-item active">Hồ sơ</li>
                            </ol>
                        </nav>
                    </div><!-- End Page Title -->

                    <section class="section profile">
                        <div class="row">
                            <div class="col-xl-4">

                                <div class="card">
                                    <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

                                        <img src="/images/avatar/${userDetail.avatar}" alt="Avatar"
                                            class="rounded-circle shadow-sm border border-white"
                                            style="width: 120px; height: 120px; object-fit: cover;">
                                        <h2>${userDetail.fullName}</h2>
                                        <!-- <h3>Web Designer</h3> -->
                                        <div class="social-links mt-2">
                                            <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                                            <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                                            <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                                            <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="col-xl-8">

                                <div class="card">
                                    <div class="card-body pt-3">
                                        <!-- Bordered Tabs -->
                                        <ul class="nav nav-tabs nav-tabs-bordered">

                                            <li class="nav-item">
                                                <button class="nav-link active" data-bs-toggle="tab"
                                                    data-bs-target="#profile-overview">Tổng quan</button>
                                            </li>

                                            <li class="nav-item">
                                                <a class="nav-link" href="/admin/update/${id}">Chỉnh sửa thông tin</a>
                                            </li>

                                            <li class="nav-item">
                                                <button class="nav-link" data-bs-toggle="tab"
                                                    data-bs-target="#profile-settings">Cài đặt</button>
                                            </li>

                                            <li class="nav-item">
                                                <button class="nav-link" data-bs-toggle="tab"
                                                    data-bs-target="#profile-change-password">Đổi mật khẩu</button>
                                            </li>

                                        </ul>
                                        <div class="tab-content pt-2">
                                            <div class="tab-pane fade profile-edit pt-3" id="profile-edit">

                                                <!-- Profile Edit Form -->
                                                <form:form method="post" action="/admin/user/update"
                                                    modelAttribute="postUser">
                                                    <div class="row mb-3">
                                                        <label for="profileImage"
                                                            class="col-md-4 col-lg-3 col-form-label">Ảnh đại
                                                            diện</label>
                                                        <div class="col-md-8 col-lg-9">
                                                            <img src="/images/products/${detailProduct.avatar}"
                                                                alt="Profile">
                                                            <div class="pt-2">
                                                                <a href="#" class="btn btn-primary btn-sm"
                                                                    title="Upload new profile image"><i
                                                                        class="bi bi-upload"></i></a>
                                                                <a href="#" class="btn btn-danger btn-sm"
                                                                    title="Remove my profile image"><i
                                                                        class="bi bi-trash"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row mb-3">
                                                        <label for="fullName"
                                                            class="col-md-4 col-lg-3 col-form-label">Tên đầy đủ</label>
                                                        <div class="col-md-8 col-lg-9">
                                                            <input name="fullName" type="text" class="form-control"
                                                                id="fullName" value="Kevin Anderson">
                                                        </div>
                                                    </div>

                                                    <div class="row mb-3">
                                                        <label for="about"
                                                            class="col-md-4 col-lg-3 col-form-label">About</label>
                                                        <div class="col-md-8 col-lg-9">
                                                            <textarea name="about" class="form-control" id="about"
                                                                style="height: 100px">Sunt est soluta temporibus accusantium neque nam maiores cumque temporibus. Tempora libero non est unde veniam est qui dolor. Ut sunt iure rerum quae quisquam autem eveniet perspiciatis odit. Fuga sequi sed ea saepe at unde.</textarea>
                                                        </div>
                                                    </div>

                                                    <div class="row mb-3">
                                                        <label for="company"
                                                            class="col-md-4 col-lg-3 col-form-label">Company</label>
                                                        <div class="col-md-8 col-lg-9">
                                                            <input name="company" type="text" class="form-control"
                                                                id="company" value="Lueilwitz, Wisoky and Leuschke">
                                                        </div>
                                                    </div>

                                                    <div class="row mb-3">
                                                        <label for="Job"
                                                            class="col-md-4 col-lg-3 col-form-label">Job</label>
                                                        <div class="col-md-8 col-lg-9">
                                                            <input name="job" type="text" class="form-control" id="Job"
                                                                value="Web Designer">
                                                        </div>
                                                    </div>

                                                    <div class="row mb-3">
                                                        <label for="Country"
                                                            class="col-md-4 col-lg-3 col-form-label">Country</label>
                                                        <div class="col-md-8 col-lg-9">
                                                            <input name="country" type="text" class="form-control"
                                                                id="Country" value="USA">
                                                        </div>
                                                    </div>

                                                    <div class="row mb-3">
                                                        <label for="Address"
                                                            class="col-md-4 col-lg-3 col-form-label">Address</label>
                                                        <div class="col-md-8 col-lg-9">
                                                            <input name="address" type="text" class="form-control"
                                                                id="Address"
                                                                value="A108 Adam Street, New York, NY 535022">
                                                        </div>
                                                    </div>

                                                    <div class="row mb-3">
                                                        <label for="Phone"
                                                            class="col-md-4 col-lg-3 col-form-label">Phone</label>
                                                        <div class="col-md-8 col-lg-9">
                                                            <input name="phone" type="text" class="form-control"
                                                                id="Phone" value="(436) 486-3538 x29071">
                                                        </div>
                                                    </div>

                                                    <div class="row mb-3">
                                                        <label for="Email"
                                                            class="col-md-4 col-lg-3 col-form-label">Email</label>
                                                        <div class="col-md-8 col-lg-9">
                                                            <input name="email" type="email" class="form-control"
                                                                id="Email" value="k.anderson@example.com">
                                                        </div>
                                                    </div>

                                                    <div class="row mb-3">
                                                        <label for="Twitter"
                                                            class="col-md-4 col-lg-3 col-form-label">Twitter
                                                            Profile</label>
                                                        <div class="col-md-8 col-lg-9">
                                                            <input name="twitter" type="text" class="form-control"
                                                                id="Twitter" value="https://twitter.com/#">
                                                        </div>
                                                    </div>

                                                    <div class="row mb-3">
                                                        <label for="Facebook"
                                                            class="col-md-4 col-lg-3 col-form-label">Facebook
                                                            Profile</label>
                                                        <div class="col-md-8 col-lg-9">
                                                            <input name="facebook" type="text" class="form-control"
                                                                id="Facebook" value="https://facebook.com/#">
                                                        </div>
                                                    </div>

                                                    <div class="row mb-3">
                                                        <label for="Instagram"
                                                            class="col-md-4 col-lg-3 col-form-label">Instagram
                                                            Profile</label>
                                                        <div class="col-md-8 col-lg-9">
                                                            <input name="instagram" type="text" class="form-control"
                                                                id="Instagram" value="https://instagram.com/#">
                                                        </div>
                                                    </div>

                                                    <div class="row mb-3">
                                                        <label for="Linkedin"
                                                            class="col-md-4 col-lg-3 col-form-label">Linkedin
                                                            Profile</label>
                                                        <div class="col-md-8 col-lg-9">
                                                            <input name="linkedin" type="text" class="form-control"
                                                                id="Linkedin" value="https://linkedin.com/#">
                                                        </div>
                                                    </div>

                                                    <div class="text-center">
                                                        <button type="submit" class="btn btn-primary">Save
                                                            Changes</button>
                                                    </div>
                                                    </form><!-- End Profile Edit Form -->

                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </section>

                </main><!-- End #main -->

                <!-- ======= Footer ======= -->
                <jsp:include page="../layout/footer.jsp" />

                <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
                        class="bi bi-arrow-up-short"></i></a>

                <!-- Vendor JS Files -->
                <script src="/vendor/apexcharts/apexcharts.min.js"></script>
                <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
                <script src="/vendor/chart.js/chart.umd.js"></script>
                <script src="/vendor/echarts/echarts.min.js"></script>
                <script src="/vendor/quill/quill.js"></script>
                <script src="/vendor/simple-datatables/simple-datatables.js"></script>
                <script src="/vendor/tinymce/tinymce.min.js"></script>
                <script src="/vendor/php-email-form/validate.js"></script>

                <!-- Template Main JS File -->
                <script src="/js/main1.js"></script>

            </body>

            </html>