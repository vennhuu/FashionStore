<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <meta content="width=device-width, initial-scale=1.0" name="viewport">

                    <title>Thông tin sản phẩm</title>
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
                            <h1>Thông tin sản phẩm</h1>
                            <nav>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="/dashboard">Trang chủ</a></li>
                                    <li class="breadcrumb-item">Sản phẩm</li>
                                </ol>
                            </nav>
                        </div><!-- End Page Title -->

                        <section class="section profile">
                            <div class="row">
                                <div class="col-xl-4">
                                    <div class="card">
                                        <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

                                            <img src="/images/products/${detailProduct.avatar}" alt="Avatar"
                                                class="rounded-circle shadow-sm border border-white"
                                                style="width: 120px; height: 120px; object-fit: cover;">
                                            <h2>${detailProduct.name}</h2>

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
                                            </ul>
                                            <div class="tab-content pt-2">

                                                <div class="tab-pane fade show active profile-overview"
                                                    id="profile-overview">
                                                    <h5 class="card-title">Thông tin mô tả</h5>
                                                    <p class="small fst-italic">${detailProduct.detailDes}</p>

                                                    <h5 class="card-title">Profile Details</h5>

                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label ">Tên sản phẩm</div>
                                                        <div class="col-lg-9 col-md-8">${detailProduct.name}</div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label">Giá</div>
                                                        <!-- <div class="col-lg-9 col-md-8">${detailProduct.price}
                                                        </div> -->
                                                        <fmt:formatNumber type="number"
                                                            value="${detailProduct.price}" />
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label">Kích cỡ</div>
                                                        <div class="col-lg-9 col-md-8">${detailProduct.size}</div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label">Hãng</div>
                                                        <div class="col-lg-9 col-md-8">${detailProduct.brand}</div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label">Màu</div>
                                                        <div class="col-lg-9 col-md-8">${detailProduct.color}</div>
                                                    </div>
                                                </div>

                                                <div class="tab-pane fade profile-edit pt-3" id="profile-edit">

                                                    <!-- Profile Edit Form -->
                                                    <form:form method="post" action="/admin/product/update"
                                                        modelAttribute="detailProduct" onsubmit="return validateForm()">
                                                        <div class="mb-3" style="display: none;">
                                                            <label class="form-label">Id</label>
                                                            <form:input type="text" class="form-control" path="id" />
                                                        </div>

                                                        <div class="row mb-3">
                                                            <label for="name"
                                                                class="col-md-4 col-lg-3 col-form-label">Tên sản
                                                                phẩm</label>
                                                            <div class="col-md-8 col-lg-9">
                                                                <form:input type="text" class="form-control"
                                                                    path="name" />
                                                            </div>
                                                        </div>

                                                        <div class="row mb-3">
                                                            <label for="detailDes"
                                                                class="col-md-4 col-lg-3 col-form-label">Thông tin mô
                                                                tả</label>
                                                            <form:input type="text" class="form-control"
                                                                path="detailDes" />
                                                        </div>

                                                        <div class="row mb-3">
                                                            <label for="shortDes"
                                                                class="col-md-4 col-lg-3 col-form-label">Mô tả ngắn
                                                                gọn</label>
                                                            <form:input type="text" class="form-control"
                                                                path="shortDes" />
                                                        </div>

                                                        <div class="row mb-3">
                                                            <label for="price"
                                                                class="col-md-4 col-lg-3 col-form-label">Giá</label>
                                                            <form:input type="text" class="form-control" path="price" />
                                                        </div>

                                                        <div class="row mb-3">
                                                            <label for="quantity"
                                                                class="col-md-4 col-lg-3 col-form-label">Số
                                                                lượng</label>
                                                            <form:input type="text" class="form-control"
                                                                path="quantity" />
                                                        </div>

                                                        <div class="row mb-3">
                                                            <label class="form-label">Hãng</label>
                                                            <form:select class="form-select" path="brand">
                                                                <form:option value="UNIQLO">UNIQLO</form:option>
                                                                <form:option value="ZARA">ZARA</form:option>
                                                                <form:option value="NIKE">NIKE</form:option>
                                                                <form:option value="ADIDAS">ADIDAS</form:option>
                                                                <form:option value="PUMA">PUMA</form:option>
                                                            </form:select>
                                                        </div>

                                                        <div class="row mb-3">
                                                            <label class="form-label">Kích cỡ</label>
                                                            <form:select class="form-select" path="size">
                                                                <form:option value="M">M</form:option>
                                                                <form:option value="L"></form:option>
                                                                <form:option value="X">X</form:option>
                                                                <form:option value="XL">XL</form:option>
                                                                <form:option value="XXL">XXL</form:option>
                                                            </form:select>
                                                        </div>

                                                        <div class="row mb-3">
                                                            <label class="form-label">Màu</label>
                                                            <form:select class="form-select" path="color">
                                                                <form:option value="WHITE">TRẮNG</form:option>
                                                                <form:option value="BLACK">ĐEN</form:option>
                                                                <form:option value="BLUE">XAHH DƯƠNG</form:option>
                                                                <form:option value="GREEN">XANH LÁ CÂY</form:option>
                                                            </form:select>
                                                        </div>
                                                        <div class="text-center">
                                                            <button type="submit" class="btn btn-primary">Lưu thay
                                                                đổi</button>
                                                        </div>
                                                    </form:form><!-- End Profile Edit Form -->

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