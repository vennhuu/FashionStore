<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <meta content="width=device-width, initial-scale=1.0" name="viewport">

                    <title>Tạo mới người dùng</title>
                    <meta content="" name="description">
                    <meta content="" name="keywords">

                    <link rel="stylesheet"
                        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                    <script>
                        $(document).ready(() => {
                            const avatarFile = $("#avatarFile");
                            avatarFile.change(function (e) {
                                const imgURL = URL.createObjectURL(e.target.files[0]);
                                $("#avatarPreview").attr("src", imgURL);
                                $("#avatarPreview").css({ "display": "block" });
                            });
                        });
                    </script>

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
                            <h1>Người dùng</h1>
                            <nav>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                                    <li class="breadcrumb-item active">Quản lý người dùng</li>
                                </ol>
                            </nav>
                        </div><!-- End Page Title -->

                        <section class="section dashboard">
                            <div class="row">


                                <div class="col-12">
                                    <!-- Card: Form tạo người dùng -->
                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <h5 class="card-title">Tạo mới người dùng</h5>
                                            <form:form method="POST" action="/admin/user/create"
                                                modelAttribute="newUser" enctype="multipart/form-data">
                                                <div class="row">
                                                    <div class="col-md-4 mb-3">
                                                        <label class="form-label">Email</label>
                                                        <form:input type="email" path="email" class="form-control" />
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <label class="form-label">Biệt danh</label>
                                                        <form:input type="text" path="username" class="form-control" />
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <label class="form-label">Tên đầy đủ</label>
                                                        <form:input type="text" path="fullName" class="form-control" />
                                                    </div>
                                                    <div class="col-md-6 mb-3">
                                                        <label class="form-label">Mật khẩu</label>
                                                        <form:input type="password" path="password"
                                                            class="form-control" />
                                                    </div>

                                                    <div class="col-md-6 mb-3">
                                                        <label class="form-label">Địa chỉ</label>
                                                        <form:input type="text" path="address" class="form-control" />
                                                    </div>
                                                    <div class="col-md-12 mb-3">
                                                        <label class="form-label">Thông tin mô tả</label>
                                                        <form:input type="text" path="description"
                                                            class="form-control" />
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label class="form-label">Số điện thoại</label>
                                                        <form:input type="text" path="phone" class="form-control" />
                                                    </div>
                                                    <div class="mb-3 col-12 col-md-3">
                                                        <label for="avatarFile" class="form-label">Ảnh đại diện</label>
                                                        <input class="form-control" type="file" id="avatarFile"
                                                            name="springFile" accept=".png, .jpg, .jpeg" />
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label class="form-label">Vai trò</label>
                                                        <form:select class="form-select" path="role.name">
                                                            <form:option value="ADMIN">ADMIN</form:option>
                                                            <form:option value="USER">USER</form:option>
                                                        </form:select>
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label class="form-label">Giới tính</label>
                                                        <form:select class="form-select" path="gender">
                                                            <form:option value="NAM">NAM</form:option>
                                                            <form:option value="NỮ">NỮ</form:option>
                                                        </form:select>
                                                    </div>
                                                </div>
                                                <div class="mb-3 col-12">
                                                    <img style="max-height: 250px; display: none;" id="avatarPreview"
                                                        alt="Avatar preview">
                                                </div>
                                                <div class="mt-4 d-flex justify-content-end">
                                                    <button type="submit" class="btn btn-primary px-4">Tạo người
                                                        dùng</button>
                                                </div>
                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End Left side columns -->
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