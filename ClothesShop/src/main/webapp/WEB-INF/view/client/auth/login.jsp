<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <title>Shoppers &mdash; Colorlib e-Commerce Template</title>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
                <main>
                    <div class="container">
                        <section
                            class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div
                                        class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                                        <div class="d-flex justify-content-center py-4">
                                            <a href="index.html" class="logo d-flex align-items-center w-auto">
                                                <img src="/img/logo.png" alt="">
                                                <span class="d-none d-lg-block">NiceAdmin</span>
                                            </a>
                                        </div><!-- End Logo -->

                                        <div class="card mb-3">

                                            <div class="card-body">

                                                <div class="pt-4 pb-2">
                                                    <h5 class="card-title text-center pb-0 fs-4">Login to Your Account
                                                    </h5>
                                                    <p class="text-center small">Enter your username & password to login
                                                    </p>
                                                </div>

                                                <form class="row g-3 needs-validation" novalidate>

                                                    <div class="col-12">
                                                        <label for="yourUsername" class="form-label">Username</label>
                                                        <div class="input-group has-validation">
                                                            <span class="input-group-text"
                                                                id="inputGroupPrepend">@</span>
                                                            <input type="text" name="username" class="form-control"
                                                                id="yourUsername" required>
                                                            <div class="invalid-feedback">Please enter your username.
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-12">
                                                        <label for="yourPassword" class="form-label">Password</label>
                                                        <input type="password" name="password" class="form-control"
                                                            id="yourPassword" required>
                                                        <div class="invalid-feedback">Please enter your password!</div>
                                                    </div>

                                                    <div class="col-12">
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="checkbox"
                                                                name="remember" value="true" id="rememberMe">
                                                            <label class="form-check-label" for="rememberMe">Remember
                                                                me</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <button class="btn btn-primary w-100"
                                                            type="submit">Login</button>
                                                    </div>
                                                    <div class="col-12">
                                                        <p class="small mb-0">Don't have account? <a
                                                                href="/register">Create an account</a></p>
                                                    </div>
                                                </form>

                                            </div>
                                        </div>

                                        <div class="credits">
                                            <!-- All the links in the footer should remain intact. -->
                                            <!-- You can delete the links only if you purchased the pro version. -->
                                            <!-- Licensing information: https://bootstrapmade.com/license/ -->
                                            <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                                            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </main><!-- End #main -->

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