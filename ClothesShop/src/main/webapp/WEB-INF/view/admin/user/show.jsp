<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta content="width=device-width, initial-scale=1.0" name="viewport">

                <title>Người dùng</title>
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

                            <!-- Top Selling -->
                            <div class="col-12">
                                <div class="card top-selling overflow-auto">

                                    <div class="card-body pb-0">
                                        <div class="mt-5">
                                            <div class="row">
                                                <div class="col-12 mx-auto">
                                                    <div class="d-flex justify-content-between">
                                                        <h5 class="card-title">Quản lý người dùng</h5>
                                                        <a href="/admin/user/create" class="ms-auto">
                                                            <button class="btn btn-primary">Tạo mới người dùng</button>
                                                        </a>
                                                    </div>
                                                    <hr />
                                                    <table class="table table-borderless">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">ID</th>
                                                                <th scope="col">Tên</th>
                                                                <th scope="col">Biệt danh</th>
                                                                <th scope="col">Email</th>
                                                                <th scope="col">Ảnh</th>
                                                                <th scope="col">Vai trò</th>
                                                                <th scope="col">Hành động</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach var="user" items="${listUsers}">
                                                                <tr>
                                                                    <th>${user.id}</th>
                                                                    <td>${user.fullName}</td>
                                                                    <td>${user.username}</td>
                                                                    <td>${user.email}</td>
                                                                    <td>
                                                                        <img src="/images/avatar/${user.avatar}"
                                                                            alt="avatar" width="60" height="60"
                                                                            style="object-fit: cover; border-radius: 50%;" />
                                                                    </td>

                                                                    <td>${user.role.name}</td>
                                                                    <td>
                                                                        <a href="/admin/user/${user.id}"
                                                                            class="btn btn-primary"> Xem </a>
                                                                        <form action="/admin/user/delete/${user.id}"
                                                                            method="post" style="display:inline;">
                                                                            <button type="submit" class="btn btn-danger"
                                                                                onclick="return confirm('Bạn có chắc chắn muốn xóa người dùng này không?')">Xóa</button>
                                                                        </form>

                                                                    </td>
                                                                </tr>
                                                            </c:forEach>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div><!-- End Top Selling -->
                                </div>
                            </div><!-- End Left side columns -->
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