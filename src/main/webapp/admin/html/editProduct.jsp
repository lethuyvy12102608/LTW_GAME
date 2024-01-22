<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Game Store</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="images/favicon.ico"/>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="html/css/bootstrap.min.css">
    <!-- Typography CSS -->
    <link rel="stylesheet" href="html/css/typography.css">
    <!-- Style CSS -->
    <link rel="stylesheet" href="html/css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="html/css/responsive.css">
</head>
<body>

<!-- Wrapper Start -->
<div class="wrapper">
    <!-- Sidebar  -->
    <div class="iq-sidebar">
        <div class="iq-sidebar-logo d-flex justify-content-between">
            <a href="homeAdmin.jsp">
                <div class="iq-light-logo">
                    <img src="images/logo.gif" class="img-fluid" alt="">
                </div>
                <div class="iq-dark-logo">
                    <img src="images/logo-dark.gif" class="img-fluid" alt="">
                </div>
                <span>vito</span>
            </a>
            <div class="iq-menu-bt-sidebar">
                <div class="iq-menu-bt align-self-center">
                    <div class="wrapper-menu">
                        <div class="main-circle"><i class="ri-arrow-left-s-line"></i></div>
                        <div class="hover-circle"><i class="ri-arrow-right-s-line"></i></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="sidebar-scrollbar">
            <nav class="iq-sidebar-menu">
                <ul id="iq-sidebar-toggle" class="iq-menu">
                    <li class="iq-menu-title"><i class="ri-subtract-line"></i><span>Home</span></li>
                    <li>
                        <a href="index.html" class="iq-waves-effect"><i
                                class="ri-home-4-line"></i><span>Dashboard</span></a>
                    </li>

                    <li class="iq-menu-title"><i class="ri-subtract-line"></i><span>Manager</span></li>

                    <li><a href="todo.html" class="iq-waves-effect" aria-expanded="false"><i
                            class="ri-chat-check-line"></i><span>Todo</span></a></li>
                    <li class="active">
                        <a href="#userinfo" class="iq-waves-effect collapsed" data-toggle="collapse"
                           aria-expanded="true"><i class="ri-user-line"></i><span>Account</span><i
                                class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="userinfo" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                            <li><a href="profile.html"><i class="ri-profile-line"></i>Account Profile</a></li>
                            <li><a href="profile-edit.html"><i class="ri-file-edit-line"></i>Account Edit</a></li>
                            <li><a href="add-user.html"><i class="ri-user-add-line"></i>Account Add</a></li>
                            <li class="active"><a href="manageAccount.html"><i class="ri-file-list-line"></i>Account
                                List</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="#forms" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i
                                class="ri-profile-line"></i><span>Product</span><i
                                class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="forms" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                            <li><a href="/admin/manageProduct"><i class="ri-tablet-line"></i>List Product</a></li>
                            <li><a href="/admin/product/add"><i class="ri-device-line"></i>Add Product</a></li>
                            <li><a href="/admin/product/edit"><i class="ri-toggle-line"></i>Edit Product</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="p-3"></div>
        </div>
    </div>
    <!-- TOP Nav Bar -->
    <div class="iq-top-navbar">
        <div class="iq-navbar-custom">
            <div class="iq-sidebar-logo">
                <div class="top-logo">
                    <a href="homeAdmin.jsp" class="logo">
                        <div class="iq-light-logo">
                            <img src="html/images/logo.gif" class="img-fluid" alt="">
                        </div>
                        <div class="iq-dark-logo">
                            <img src="html/images/logo-dark.gif" class="img-fluid" alt="">
                        </div>
                        <span>Game Store</span>
                    </a>
                </div>
            </div>
            <nav class="navbar navbar-expand-lg navbar-light p-0">
                <div class="navbar-left">

                    <div class="iq-search-bar d-none d-md-block">
                        <form action="#" class="searchbox">
                            <input type="text" class="text search-input" placeholder="Type here to search...">
                            <a class="search-link" href="#"><i class="ri-search-line"></i></a>
                            <div class="searchbox-datalink">
                                <h6 class="pl-3 pt-3 pb-3">Pages</h6>
                                <ul class="m-0 pl-3 pr-3 pb-3">
                                    <li class="iq-bg-primary-hover rounded"><a href="index.html"
                                                                               class="nav-link router-link-exact-active router-link-active pr-2"><i
                                            class="ri-home-4-line pr-2"></i>Dashboard</a></li>
                                    <li class="iq-bg-primary-hover rounded"><a href="dashboard-1.html"
                                                                               class="nav-link router-link-exact-active router-link-active pr-2"><i
                                            class="ri-home-3-line pr-2"></i>Dashboard-1</a></li>
                                    <li class="iq-bg-primary-hover rounded"><a href="chat.html" class="nav-link"><i
                                            class="ri-message-line pr-2"></i>Chat</a></li>
                                    <li class="iq-bg-primary-hover rounded"><a href="calendar.html" class="nav-link"><i
                                            class="ri-calendar-2-line pr-2"></i>Calendar</a></li>
                                    <li class="iq-bg-primary-hover rounded"><a href="profile.html" class="nav-link"><i
                                            class="ri-profile-line pr-2"></i>Profile</a></li>
                                    <li class="iq-bg-primary-hover rounded"><a href="todo.html" class="nav-link"><i
                                            class="ri-chat-check-line pr-2"></i>Todo</a></li>
                                    <li class="iq-bg-primary-hover rounded"><a href="app/index.html" class="nav-link"><i
                                            class="ri-mail-line pr-2"></i>Email</a></li>
                                    <li class="iq-bg-primary-hover rounded"><a href="e-commerce-product-list.html"
                                                                               class="nav-link"><i
                                            class="ri-message-line pr-2"></i>Product Listing</a></li>
                                    <li class="iq-bg-primary-hover rounded"><a href="e-commerce-product-detail.html"
                                                                               class="nav-link"><i
                                            class="ri-file-list-line pr-2"></i>Product Details</a></li>
                                    <li class="iq-bg-primary-hover rounded"><a href="pages-faq.html" class="nav-link"><i
                                            class="ri-compasses-line pr-2"></i>Faq</a></li>
                                    <li class="iq-bg-primary-hover rounded"><a href="form-wizard.html" class="nav-link"><i
                                            class="ri-clockwise-line pr-2"></i>Form-wizard</a></li>
                                </ul>
                            </div>
                        </form>
                    </div>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-label="Toggle navigation">
                    <i class="ri-menu-3-line"></i>
                </button>
                <div class="iq-menu-bt align-self-center">
                    <div class="wrapper-menu">
                        <div class="main-circle"><i class="ri-arrow-left-s-line"></i></div>
                        <div class="hover-circle"><i class="ri-arrow-right-s-line"></i></div>
                    </div>
                </div>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-list">
                        <li class="nav-item">
                            <a class="search-toggle iq-waves-effect language-title" href="#"><img
                                    src="images/small/flag-01.png" alt="img-flaf" class="img-fluid mr-1"
                                    style="height: 16px; width: 16px;"/> English <i
                                    class="ri-arrow-down-s-line"></i></a>
                            <div class="iq-sub-dropdown">
                                <a class="iq-sub-card" href="#"><img src="images/small/flag-02.png" alt="img-flaf"
                                                                     class="img-fluid mr-2"/>VietNam</a>
                                <a class="iq-sub-card" href="#"><img src="images/small/flag-03.png" alt="img-flaf"
                                                                     class="img-fluid mr-2"/>Spanish</a>
                                <a class="iq-sub-card" href="#"><img src="images/small/flag-04.png" alt="img-flaf"
                                                                     class="img-fluid mr-2"/>Italian</a>
                                <a class="iq-sub-card" href="#"><img src="images/small/flag-05.png" alt="img-flaf"
                                                                     class="img-fluid mr-2"/>German</a>
                                <a class="iq-sub-card" href="#"><img src="images/small/flag-06.png" alt="img-flaf"
                                                                     class="img-fluid mr-2"/>Japanese</a>

                            </div>
                        </li>

                        <li class="nav-item">
                            <a href="#" class="search-toggle iq-waves-effect">
                                <div id="lottie-beil"></div>
                                <span class="bg-danger dots"></span>
                            </a>
                            <div class="iq-sub-dropdown">
                                <div class="iq-card shadow-none m-0">
                                    <div class="iq-card-body p-0 ">
                                        <div class="bg-primary p-3">
                                            <h5 class="mb-0 text-white">All Notifications<small
                                                    class="badge  badge-light float-right pt-1">4</small></h5>
                                        </div>

                                        <a href="#" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded" src="images/user/01.jpg" alt="">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">Emma Watson Nik</h6>
                                                    <small class="float-right font-size-12">Just Now</small>
                                                    <p class="mb-0">95 MB</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded" src="images/user/02.jpg" alt="">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">New customer is join</h6>
                                                    <small class="float-right font-size-12">5 days ago</small>
                                                    <p class="mb-0">Jond Nik</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded" src="images/user/03.jpg" alt="">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">Two customer is left</h6>
                                                    <small class="float-right font-size-12">2 days ago</small>
                                                    <p class="mb-0">Jond Nik</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded" src="images/user/04.jpg" alt="">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">New Mail from Fenny</h6>
                                                    <small class="float-right font-size-12">3 days ago</small>
                                                    <p class="mb-0">Jond Nik</p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a href="#" class="search-toggle iq-waves-effect">
                                <div id="lottie-mail"></div>
                                <span class="bg-primary count-mail"></span>
                            </a>
                            <div class="iq-sub-dropdown">
                                <div class="iq-card shadow-none m-0">
                                    <div class="iq-card-body p-0 ">
                                        <div class="bg-primary p-3">
                                            <h5 class="mb-0 text-white">All Messages<small
                                                    class="badge  badge-light float-right pt-1">5</small></h5>
                                        </div>
                                        <a href="#" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded" src="images/user/01.jpg" alt="">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">Nik Emma Watson</h6>
                                                    <small class="float-left font-size-12">13 Jun</small>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded" src="images/user/02.jpg" alt="">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">Lorem Ipsum Watson</h6>
                                                    <small class="float-left font-size-12">20 Apr</small>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded" src="images/user/03.jpg" alt="">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">Why do we use it?</h6>
                                                    <small class="float-left font-size-12">30 Jun</small>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded" src="images/user/04.jpg" alt="">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">Variations Passages</h6>
                                                    <small class="float-left font-size-12">12 Sep</small>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="iq-sub-card">
                                            <div class="media align-items-center">
                                                <div class="">
                                                    <img class="avatar-40 rounded" src="images/user/05.jpg" alt="">
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">Lorem Ipsum generators</h6>
                                                    <small class="float-left font-size-12">5 Dec</small>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <ul class="navbar-list">
                    <li>
                        <a href="#" class="search-toggle iq-waves-effect d-flex align-items-center bg-primary rounded">
                            <img src="images/user/1.jpg" class="img-fluid rounded mr-3" alt="user">
                            <div class="caption">
                                <h6 class="mb-0 line-height text-white">Nik jone</h6>
                                <span class="font-size-12 text-white">Available</span>
                            </div>
                        </a>
                        <div class="iq-sub-dropdown iq-user-dropdown">
                            <div class="iq-card shadow-none m-0">
                                <div class="iq-card-body p-0 ">
                                    <div class="bg-primary p-3">
                                        <h5 class="mb-0 text-white line-height">Hello Nik jone</h5>
                                        <span class="text-white font-size-12">Available</span>
                                    </div>
                                    <a href="profile.html" class="iq-sub-card iq-bg-primary-hover">
                                        <div class="media align-items-center">
                                            <div class="rounded iq-card-icon iq-bg-primary">
                                                <i class="ri-file-user-line"></i>
                                            </div>
                                            <div class="media-body ml-3">
                                                <h6 class="mb-0 ">My Profile</h6>
                                                <p class="mb-0 font-size-12">View personal profile details.</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="profile-edit.html" class="iq-sub-card iq-bg-primary-hover">
                                        <div class="media align-items-center">
                                            <div class="rounded iq-card-icon iq-bg-primary">
                                                <i class="ri-profile-line"></i>
                                            </div>
                                            <div class="media-body ml-3">
                                                <h6 class="mb-0 ">Edit Profile</h6>
                                                <p class="mb-0 font-size-12">Modify your personal details.</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="account-setting.html" class="iq-sub-card iq-bg-primary-hover">
                                        <div class="media align-items-center">
                                            <div class="rounded iq-card-icon iq-bg-primary">
                                                <i class="ri-account-box-line"></i>
                                            </div>
                                            <div class="media-body ml-3">
                                                <h6 class="mb-0 ">Account settings</h6>
                                                <p class="mb-0 font-size-12">Manage your account parameters.</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="privacy-setting.html" class="iq-sub-card iq-bg-primary-hover">
                                        <div class="media align-items-center">
                                            <div class="rounded iq-card-icon iq-bg-primary">
                                                <i class="ri-lock-line"></i>
                                            </div>
                                            <div class="media-body ml-3">
                                                <h6 class="mb-0 ">Privacy Settings</h6>
                                                <p class="mb-0 font-size-12">Control your privacy parameters.</p>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="d-inline-block w-100 text-center p-3">
                                        <a class="btn btn-primary dark-btn-primary" href="sign-in.html" role="button">Sign
                                            out<i class="ri-login-box-line ml-2"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </nav>


        </div>
    </div>
    <!-- TOP Nav Bar END -->

    <!-- Page Content  -->
    <div id="content-page" class="content-page">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                    <div class="iq-card">
                        <div class="iq-card-header d-flex justify-content-between">
                            <div class="iq-header-title">
                                <h4 class="card-title">Add New Product</h4>
                            </div>
                        </div>
                        <div class="iq-card-body">
                            <form>
                                <div class="form-group">
                                    <div class="add-img-user profile-img-edit">
                                        <img class="profile-pic img-fluid" src="images/user/11.png" alt="profile-pic">
                                        <div class="p-image">
                                            <a href="javascript:void();" class="upload-button btn iq-bg-primary">File
                                                Upload</a>
                                            <input class="file-upload" type="file" accept="html/image/*">
                                        </div>
                                    </div>
                                    <div class="img-extension mt-3">
                                        <div class="d-inline-block align-items-center">
                                            <span>Only</span>
                                            <a href="javascript:void();">.jpg</a>
                                            <a href="javascript:void();">.png</a>
                                            <a href="javascript:void();">.jpeg</a>
                                            <span>allowed</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Category:</label>
                                    <select class="form-control" id="selectuserrole">
                                        <c:forEach items="i" var="${categoryList}">
                                            <option>${i.title}</option>
                                        </c:forEach>

                                    </select>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="iq-card">
                        <div class="iq-card-header d-flex justify-content-between">
                            <div class="iq-header-title">
                                <h4 class="card-title">Product Information</h4>
                            </div>
                        </div>
                        <div class="iq-card-body">
                            <div class="new-user-info">
                                <form>
                                    <div class="row">
                                        <div class="form-group col-md-12">
                                            <label >Title:</label>
                                            <input type="text" class="form-control" name="title" placeholder="Title" value="${product.title}" />
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label >Description:</label>
                                            <input type="text" class="form-control" name="description"
                                                   placeholder="Description">
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label >Detail :</label>
                                            <input type="text" class="form-control" name="detail"
                                                   placeholder="Detail">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label >Price:</label>
                                            <input type="password" class="form-control" name="price"
                                                   placeholder="Price">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label >Discount:</label>
                                            <input type="password" class="form-control" name="discount"
                                                   placeholder="Discount ">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label >Status:</label>
                                            <input type="password" class="form-control"
                                                   placeholder="Discount ">
                                        </div>

                                    </div>
                                    <hr>

                                    <div class="checkbox">
                                        <label><input class="mr-2" type="checkbox">Enable
                                            Two-Factor-Authentication</label>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Wrapper END -->
<!-- Footer -->
<footer class="iq-footer">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6">
                <ul class="list-inline mb-0">
                    <li class="list-inline-item"><a href="privacy-policy.html">Privacy Policy</a></li>
                    <li class="list-inline-item"><a href="terms-of-service.html">Terms of Use</a></li>
                </ul>
            </div>
            <div class="col-lg-6 text-right">
                Copyright 2020 <a href="#">Vito</a> All Rights Reserved.
            </div>
        </div>
    </div>
</footer>

<!-- Footer END -->
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="html/js/jquery.min.js"></script>
<!-- Rtl and Darkmode -->
<script src="html/js/rtl.js"></script>
<script src="html/js/customizer.js"></script>
<script src="html/js/popper.min.js"></script>
<script src="html/js/bootstrap.min.js"></script>
<!-- Appear JavaScript -->
<script src="html/js/jquery.appear.js"></script>
<!-- Countdown JavaScript -->
<script src="html/js/countdown.min.js"></script>
<!-- Counterup JavaScript -->
<script src="html/js/waypoints.min.js"></script>
<script src="html/js/jquery.counterup.min.js"></script>
<!-- Wow JavaScript -->
<script src="html/js/wow.min.js"></script>
<!-- Apexcharts JavaScript -->
<script src="html/js/apexcharts.js"></script>
<!-- Slick JavaScript -->
<script src="html/js/slick.min.js"></script>
<!-- Select2 JavaScript -->
<script src="html/js/select2.min.js"></script>
<!-- Owl Carousel JavaScript -->
<script src="html/js/owl.carousel.min.js"></script>
<!-- Magnific Popup JavaScript -->
<script src="html/js/jquery.magnific-popup.min.js"></script>
<!-- Smooth Scrollbar JavaScript -->
<script src="html/js/smooth-scrollbar.js"></script>
<!-- lottie JavaScript -->
<script src="html/js/lottie.js"></script>
<!-- Chart Custom JavaScript -->
<script src="html/js/chart-custom.js"></script>
<!-- Custom JavaScript -->
<script src="html/js/custom.js"></script>
</body>
</html>