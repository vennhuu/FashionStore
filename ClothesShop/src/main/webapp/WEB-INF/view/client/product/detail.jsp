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
                <link rel="stylesheet" href="/fonts/icomoon/style.css">
                <link rel="stylesheet" href="/css/bootstrap.min.css">
                <link rel="stylesheet" href="/css/magnific-popup.css">
                <link rel="stylesheet" href="/css/jquery-ui.css">
                <link rel="stylesheet" href="/css/owl.carousel.min.css">
                <link rel="stylesheet" href="/css/owl.theme.default.min.css">
                <link rel="stylesheet" href="/css/aos.css">
                <link rel="stylesheet" href="/css/stylee.css">
                <style>
                    .block-4-image .image-wrapper {
                        height: 250px;
                        display: flex;
                        justify-content: center;
                        align-items: center;
                        overflow: hidden;
                        border-radius: 10px;
                        background-color: #f8f8f8;
                        /* tùy chọn */
                    }

                    .block-4-image .image-wrapper img {
                        max-height: 100%;
                        width: auto;
                        object-fit: cover;
                    }
                </style>

            </head>

            <body>

                <div class="site-wrap">
                    <!-- ======= Header ======= -->
                    <jsp:include page="../layout/header.jsp" />

                    <div class="bg-light py-3">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 mb-0"><a href="index.html">Home</a> <span
                                        class="mx-2 mb-0">/</span> <strong class="text-black">${product.name}</strong>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="site-section">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    <img src="/images/products/${product.avatar}" alt="Image" class="img-fluid">
                                </div>
                                <div class="col-md-6">
                                    <h2 class="text-black">${product.name}</h2>
                                    <p>${product.detailDes}</p>

                                    <p><strong class="text-primary h4">
                                            <fmt:formatNumber type="number" value="${product.price}" /> đ
                                        </strong></p>
                                    <p><strong class="text-primary h4">Hãng : ${product.brand}</strong></p>
                                    <p><strong class="text-primary h4">Màu : ${product.color}</strong></p>
                                    <div class="mb-1 d-flex">
                                        <label for="option-sm" class="d-flex mr-3 mb-3">
                                            <span class="d-inline-block mr-2"
                                                style="top:-2px; position: relative;"><input type="radio" id="option-sm"
                                                    name="shop-sizes"></span> <span
                                                class="d-inline-block text-black">M</span>
                                        </label>
                                        <label for="option-md" class="d-flex mr-3 mb-3">
                                            <span class="d-inline-block mr-2"
                                                style="top:-2px; position: relative;"><input type="radio" id="option-md"
                                                    name="shop-sizes"></span> <span
                                                class="d-inline-block text-black">L</span>
                                        </label>
                                        <label for="option-lg" class="d-flex mr-3 mb-3">
                                            <span class="d-inline-block mr-2"
                                                style="top:-2px; position: relative;"><input type="radio" id="option-lg"
                                                    name="shop-sizes"></span> <span
                                                class="d-inline-block text-black">X</span>
                                        </label>
                                        <label for="option-xl" class="d-flex mr-3 mb-3">
                                            <span class="d-inline-block mr-2"
                                                style="top:-2px; position: relative;"><input type="radio" id="option-xl"
                                                    name="shop-sizes"></span> <span class="d-inline-block text-black">
                                                XL</span>
                                        </label>
                                        <label for="option-xl" class="d-flex mr-3 mb-3">
                                            <span class="d-inline-block mr-2"
                                                style="top:-2px; position: relative;"><input type="radio" id="option-xl"
                                                    name="shop-sizes"></span> <span class="d-inline-block text-black">
                                                XXL</span>
                                        </label>
                                    </div>
                                    <div class="mb-5">
                                        <div class="input-group mb-3" style="max-width: 120px;">
                                            <div class="input-group-prepend">
                                                <button class="btn btn-outline-primary js-btn-minus"
                                                    type="button">&minus;</button>
                                            </div>
                                            <input type="text" class="form-control text-center" value="1" placeholder=""
                                                aria-label="Example text with button addon"
                                                aria-describedby="button-addon1">
                                            <div class="input-group-append">
                                                <button class="btn btn-outline-primary js-btn-plus"
                                                    type="button">&plus;</button>
                                            </div>
                                        </div>
                                    </div>
                                    <p><a href="" class="buy-now btn btn-sm btn-primary">Thêm vào giỏ hàng</a>
                                    </p>
                                    <p><a href="" class="buy-now btn btn-sm btn-primary">Thêm vào yêu thích</a>
                                    </p>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="site-section block-3 site-blocks-2 bg-light">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-md-7 site-section-heading text-center pt-4">
                                    <h2>Sản phẩm liên quan</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="nonloop-block-3 owl-carousel">
                                        <c:forEach var="relatedProduct" items="${relatedProducts}">
                                            <div class="item">
                                                <div class="block-4 text-center">
                                                    <figure class="block-4-image">
                                                        <div class="image-wrapper">
                                                            <img src="/images/products/${relatedProduct.avatar}"
                                                                alt="Image placeholder" class="img-fluid">
                                                        </div>
                                                    </figure>

                                                    <div class="block-4-text p-4">
                                                        <h3><a
                                                                href="/product/${relatedProduct.id}">${relatedProduct.name}</a>
                                                        </h3>
                                                        <p class="mb-0">${relatedProduct.shortDes}</p>
                                                        <p class="text-primary font-weight-bold">
                                                            <fmt:formatNumber type="number"
                                                                value="${relatedProduct.price}" /> đ
                                                        </p>
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