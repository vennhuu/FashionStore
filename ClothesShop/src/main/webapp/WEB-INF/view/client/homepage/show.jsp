<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <title>Shoppers &mdash; Colorlib e-Commerce Template</title>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

                <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
                <link rel="stylesheet" href="fonts/icomoon/style.css">
                <link rel="stylesheet" href="css/bootstrap.min.css">
                <link rel="stylesheet" href="css/magnific-popup.css">
                <link rel="stylesheet" href="css/jquery-ui.css">
                <link rel="stylesheet" href="css/owl.carousel.min.css">
                <link rel="stylesheet" href="css/owl.theme.default.min.css">
                <link rel="stylesheet" href="css/aos.css">
                <link rel="stylesheet" href="css/stylee.css">

                <!-- ✅ Custom style -->
                <style>
                    .product-list {
                        margin-top: 40px;
                    }

                    .fruite-item {
                        height: 100%;
                        display: flex;
                        flex-direction: column;
                        margin: 20px;
                        box-shadow: 0 4px 8px 0 black;
                        transition: transform 0.3s ease;
                    }

                    .fruite-item:hover {
                        transform: translateY(-5px);
                    }

                    .fruite-img {
                        height: 250px;
                        overflow: hidden;
                        border-radius: 10px 10px 0 0;
                    }

                    .fruite-img img {
                        object-fit: cover;
                        width: 100%;
                        height: 100%;
                    }

                    .fruite-item .p-4 {
                        flex-grow: 1;
                        display: flex;
                        flex-direction: column;
                        justify-content: space-between;
                        padding: 1.2rem;
                    }

                    .fruite-item h4 {
                        min-height: 50px;
                        font-size: 18px;
                    }

                    .fruite-item p {
                        min-height: 60px;
                        margin-bottom: 1rem;
                        color: #666;
                    }

                    .col-md-6.col-lg-4.col-xl-3 {
                        padding-left: 15px;
                        padding-right: 15px;
                        margin-bottom: 40px;
                    }

                    .row.g-4 {
                        margin-left: -15px;
                        margin-right: -15px;
                    }

                    .filter-select {
                        min-width: 150px;
                        padding: 6px 10px;
                        font-size: 14px;
                        border-radius: 8px;
                        border: 1px solid #ccc;
                        box-shadow: none;
                        transition: border-color 0.3s ease;
                    }

                    .filter-select:focus {
                        border-color: #888;
                        outline: none;
                    }
                </style>
            </head>

            <body>

                <div class="site-wrap">
                    <!-- ======= Header ======= -->
                    <jsp:include page="../layout/header.jsp" />

                    <!-- banner -->
                    <jsp:include page="../layout/banner.jsp" />

                    <!-- Bộ lọc sản phẩm -->
                    <div class="container mt-5">
                        <div class="row mb-3">
                            <div class="col-md-12 d-flex justify-content-between align-items-center flex-wrap">
                                <h5 class="mb-2 mb-md-0">Tất cả sản phẩm</h5>
                                <div class="d-flex gap-2">
                                    <select class="form-select filter-select">
                                        <option value="default">Hãng</option>
                                        <option value="UNIQLO">UNIQLO</option>
                                        <option value="ZARA">ZARA</option>
                                        <option value="NIKE">NIKE</option>
                                        <option value="ADIDAS">ADIDAS</option>
                                        <option value="PUMA">PUMA</option>
                                    </select>
                                    <select class="form-select filter-select">
                                        <option value="default">Màu</option>
                                        <option value="BLACK">ĐEN</option>
                                        <option value="WHITE">TRẮNG</option>
                                        <option value="BLUE">XANH DA TRỜI</option>
                                        <option value="GREEN">XANH LÁ</option>
                                    </select>
                                </div>
                            </div>

                        </div>
                    </div>

                    <!-- content -->
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane fade show p-0 active">
                            <div class="row g-4 product-list">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        <c:forEach var="listProduct" items="${listProduct}">
                                            <div class="col-md-6 col-lg-4 col-xl-3">
                                                <div class="rounded position-relative fruite-item">
                                                    <div class="fruite-img">
                                                        <img src="/images/products/${listProduct.avatar}"
                                                            class="img-fluid w-100 rounded-top" alt="">
                                                    </div>
                                                    <div class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                                                        style="top: 10px; left: 10px;">Áo</div>
                                                    <div
                                                        class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                        <h4><a href="/product/${listProduct.id}">${listProduct.name}</a>
                                                        </h4>
                                                        <p>${listProduct.shortDes}</p>
                                                        <div class="d-flex justify-content-between flex-lg-wrap">
                                                            <p class="text-dark fs-5 fw-bold mb-0">
                                                                <fmt:formatNumber type="number"
                                                                    value="${listProduct.price}" /> đ
                                                            </p>
                                                            <a href="#"
                                                                class="btn border border-secondary rounded-pill px-3 text-primary">
                                                                <i class="fa fa-shopping-bag me-2 text-primary"></i>
                                                                Add to cart
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- footer -->
                    <jsp:include page="../layout/footer.jsp" />
                </div>

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