<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <meta content="width=device-width, initial-scale=1.0" name="viewport">

                    <title>Thông tin người dùng</title>
                    <meta content="" name="description">
                    <meta content="" name="keywords">

                    <link rel="stylesheet"
                        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

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
                                            <h2>${userDetail.username}</h2>
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
                                                    <button class="nav-link" data-bs-toggle="tab"
                                                        data-bs-target="#profile-edit"><a
                                                            href="/admin/update/{id}"></a>Chỉnh sửa
                                                        thông tin</button>
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

                                                <div class="tab-pane fade show active profile-overview"
                                                    id="profile-overview">
                                                    <h5 class="card-title">Thông tin mô tả</h5>
                                                    <p class="small fst-italic">${userDetail.description}</p>

                                                    <h5 class="card-title">Profile Details</h5>

                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label ">Full Name</div>
                                                        <div class="col-lg-9 col-md-8">${userDetail.fullName}</div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label">Address</div>
                                                        <div class="col-lg-9 col-md-8">${userDetail.address}
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label">Phone</div>
                                                        <div class="col-lg-9 col-md-8">${userDetail.phone}</div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label">Email</div>
                                                        <div class="col-lg-9 col-md-8">${userDetail.email}</div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label">Vai trò</div>
                                                        <div class="col-lg-9 col-md-8">${userDetail.role.name}</div>
                                                    </div>

                                                </div>

                                                <div class="tab-pane fade profile-edit pt-3" id="profile-edit">

                                                    <!-- Profile Edit Form -->
                                                    <form:form method="post" action="/admin/user/update"
                                                        modelAttribute="userDetail" onsubmit="return validateForm()">
                                                        <div class="mb-3" style="display: none;">
                                                            <label class="form-label">Id</label>
                                                            <form:input type="text" class="form-control" path="id" />
                                                        </div>
                                                        <!-- <div class="row mb-3">
                                                            <label for="profileImage"
                                                                class="col-md-4 col-lg-3 col-form-label">Ảnh đại
                                                                diện</label>
                                                            <div class="col-md-8 col-lg-9">
                                                                <img src="/images/avatar/${userDetail.avatar}"
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
                                                        </div> -->

                                                        <div class="row mb-3">
                                                            <label for="fullName"
                                                                class="col-md-4 col-lg-3 col-form-label">Tên đầy
                                                                đủ</label>
                                                            <div class="col-md-8 col-lg-9">
                                                                <form:input type="text" class="form-control"
                                                                    path="fullName" />
                                                            </div>
                                                        </div>

                                                        <div class="row mb-3">
                                                            <label for="about"
                                                                class="col-md-4 col-lg-3 col-form-label">Thông tin mô
                                                                tả</label>
                                                            <form:input type="text" class="form-control"
                                                                path="description" />
                                                        </div>

                                                        <div class="row mb-3">
                                                            <label for="Address"
                                                                class="col-md-4 col-lg-3 col-form-label">Địa chỉ</label>
                                                            <form:input type="text" class="form-control"
                                                                path="address" />
                                                        </div>

                                                        <div class="row mb-3">
                                                            <label for="Phone"
                                                                class="col-md-4 col-lg-3 col-form-label">Số điện
                                                                thoại</label>
                                                            <form:input type="text" class="form-control" path="phone" />
                                                        </div>

                                                        <div class="row mb-3">
                                                            <label for="Email"
                                                                class="col-md-4 col-lg-3 col-form-label">Email</label>
                                                            <form:input type="email" class="form-control"
                                                                path="email" />
                                                        </div>

                                                        <!-- <div class="row mb-3">
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
                                                    </div> -->

                                                        <!-- <div class="row mb-3">
                                                        <label for="Linkedin"
                                                            class="col-md-4 col-lg-3 col-form-label">Linkedin
                                                            Profile</label>
                                                        <div class="col-md-8 col-lg-9">
                                                            <input name="linkedin" type="text" class="form-control"
                                                                id="Linkedin" value="https://linkedin.com/#">
                                                        </div>
                                                    </div> -->

                                                        <div class="text-center">
                                                            <button type="submit" class="btn btn-primary">Lưu thay
                                                                đổi</button>
                                                        </div>
                                                    </form:form><!-- End Profile Edit Form -->

                                                </div>

                                                <div class="tab-pane fade pt-3" id="profile-settings">

                                                    <!-- Settings Form -->
                                                    <form>

                                                        <div class="row mb-3">
                                                            <label for="fullName"
                                                                class="col-md-4 col-lg-3 col-form-label">Email
                                                                Notifications</label>
                                                            <div class="col-md-8 col-lg-9">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="changesMade" checked>
                                                                    <label class="form-check-label" for="changesMade">
                                                                        Changes made to your account
                                                                    </label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="newProducts" checked>
                                                                    <label class="form-check-label" for="newProducts">
                                                                        Information on new products and services
                                                                    </label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="proOffers">
                                                                    <label class="form-check-label" for="proOffers">
                                                                        Marketing and promo offers
                                                                    </label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="securityNotify" checked disabled>
                                                                    <label class="form-check-label"
                                                                        for="securityNotify">
                                                                        Security alerts
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="text-center">
                                                            <button type="submit" class="btn btn-primary">Save
                                                                Changes</button>
                                                        </div>
                                                    </form><!-- End settings Form -->

                                                </div>

                                                <div class="tab-pane fade pt-3" id="profile-change-password">
                                                    <!-- Change Password Form -->
                                                    <form>

                                                        <div class="row mb-3">
                                                            <label for="currentPassword"
                                                                class="col-md-4 col-lg-3 col-form-label">Current
                                                                Password</label>
                                                            <div class="col-md-8 col-lg-9">
                                                                <input name="password" type="password"
                                                                    class="form-control" id="currentPassword">
                                                            </div>
                                                        </div>

                                                        <div class="row mb-3">
                                                            <label for="newPassword"
                                                                class="col-md-4 col-lg-3 col-form-label">New
                                                                Password</label>
                                                            <div class="col-md-8 col-lg-9">
                                                                <input name="newpassword" type="password"
                                                                    class="form-control" id="newPassword">
                                                            </div>
                                                        </div>

                                                        <div class="row mb-3">
                                                            <label for="renewPassword"
                                                                class="col-md-4 col-lg-3 col-form-label">Re-enter New
                                                                Password</label>
                                                            <div class="col-md-8 col-lg-9">
                                                                <input name="renewpassword" type="password"
                                                                    class="form-control" id="renewPassword">
                                                            </div>
                                                        </div>

                                                        <div class="text-center">
                                                            <button type="submit" class="btn btn-primary">Change
                                                                Password</button>
                                                        </div>
                                                    </form><!-- End Change Password Form -->

                                                </div>

                                            </div><!-- End Bordered Tabs -->

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