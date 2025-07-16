<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!-- ======= Sidebar ======= -->
            <aside id="sidebar" class="sidebar">

                <ul class="sidebar-nav" id="sidebar-nav">

                    <li class="nav-item">
                        <a class="nav-link " href="/dashboard">
                            <i class="bi bi-grid"></i>
                            <span>Tổng quan</span>
                        </a>
                    </li><!-- End Dashboard Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" href="/admin/user">
                            <i class="bi bi-person"></i>
                            <span>Quản lý người dùng</span>
                        </a>
                    </li><!-- End Profile Page Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" href="/admin/product">
                            <i class="fa-solid fa-shirt"></i>
                            <span>Quản lý sản phẩm</span>
                        </a>
                    </li><!-- End Profile Page Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" href="">
                            <i class="bi bi-bag-check"></i>
                            <span>Quản lý đơn hàng</span>
                        </a>
                    </li><!-- End Profile Page Nav -->
                </ul>

            </aside><!-- End Sidebar-->