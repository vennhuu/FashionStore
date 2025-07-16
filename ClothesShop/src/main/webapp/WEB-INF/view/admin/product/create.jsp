<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <meta content="width=device-width, initial-scale=1.0" name="viewport">

                    <title>Tạo mới sản phẩm</title>
                    <meta content="" name="description">
                    <meta content="" name="keywords">

                    <link rel="stylesheet"
                        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                    <script>
                        $(document).ready(() => {
                            const avatarFile = $("#productFile");
                            avatarFile.change(function (e) {
                                const imgURL = URL.createObjectURL(e.target.files[0]);
                                $("#productPreview").attr("src", imgURL);
                                $("#productPreview").css({ "display": "block" });
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
                            <h1>Sản phẩm</h1>
                            <nav>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                                    <li class="breadcrumb-item active">Quản lý sản phẩm</li>
                                </ol>
                            </nav>
                        </div><!-- End Page Title -->

                        <section class="section dashboard">
                            <div class="row">
                                <div class="col-12">
                                    <!-- Card: Form tạo người dùng -->
                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <h5 class="card-title">Tạo mới sản phẩm</h5>
                                            <form:form method="POST" action="/admin/product/create"
                                                modelAttribute="newProduct" enctype="multipart/form-data">
                                                <div class="row">
                                                    <div class="col-md-4 mb-3">
                                                        <label class="form-label">Tên sản phẩm</label>
                                                        <form:input type="text" path="name" class="form-control" />
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <label class="form-label">Giá</label>
                                                        <form:input type="text" path="price" class="form-control" />
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <label class="form-label">Số lượng</label>
                                                        <form:input type="text" path="quantity" class="form-control" />
                                                    </div>

                                                    <div class="col-md-12 mb-3">
                                                        <label class="form-label">Mô tả ngắn</label>
                                                        <form:input type="text" path="shortDes" class="form-control" />
                                                    </div>
                                                    <div class="col-md-12 mb-3">
                                                        <label class="form-label">Thông tin mô tả</label>
                                                        <form:input type="text" path="detailDes" class="form-control" />
                                                    </div>

                                                    <div class="mb-3 col-12 col-md-3">
                                                        <label for="productFile" class="form-label">Ảnh đại diện</label>
                                                        <input class="form-control" type="file" id="productsFile"
                                                            name="productFile" accept=".png, .jpg, .jpeg" />
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label class="form-label">Kích cỡ</label>
                                                        <form:select class="form-select" path="size">
                                                            <form:option value="M">M</form:option>
                                                            <form:option value="L">L</form:option>
                                                            <form:option value="X">X</form:option>
                                                            <form:option value="XL">XL</form:option>
                                                            <form:option value="XXL">XXL</form:option>
                                                        </form:select>
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label class="form-label">Hãng</label>
                                                        <form:select class="form-select" path="brand">
                                                            <form:option value="UNIQLO">UNIQLO</form:option>
                                                            <form:option value="ZARA">ZARA</form:option>
                                                            <form:option value="NIKE">NIKE</form:option>
                                                            <form:option value="ADIDAS">ADIDAS</form:option>
                                                            <form:option value="PUMA">PUMA</form:option>
                                                        </form:select>
                                                    </div>

                                                    <div class="col-md-3 mb-3">
                                                        <label class="form-label">Màu</label>
                                                        <form:select class="form-select" path="color">
                                                            <form:option value="WHITE">TRẮNG</form:option>
                                                            <form:option value="BLACK">ĐEN</form:option>
                                                            <form:option value="BLUE">XAHH DƯƠNG</form:option>
                                                            <form:option value="GREEN">XANH LÁ CÂY</form:option>
                                                        </form:select>
                                                    </div>
                                                </div>
                                                <div class="mb-3 col-12">
                                                    <img style="max-height: 250px; display: none;" id="productPreview"
                                                        alt="Product preview">
                                                </div>
                                                <div class="mt-4 d-flex justify-content-end">
                                                    <button type="submit" class="btn btn-primary px-4">Tạo sản
                                                        phẩm</button>
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