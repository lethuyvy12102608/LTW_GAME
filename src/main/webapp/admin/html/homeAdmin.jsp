<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Game store</title>
  <!-- Favicon -->
  <link rel="shortcut icon" href="images/favicon.ico" />
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
      <a href="index.html">
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
            <a href="/admin" class="iq-waves-effect"><i
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
              <li><a href="/admin/addAccount"><i class="ri-user-add-line"></i>Account Add</a></li>
              <li class="active"><a href="user-list.html"><i class="ri-file-list-line"></i>Account
                List</a>
              </li>
            </ul>
          </li>

          <li>
            <a href="#forms" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="ri-profile-line"></i><span>Product</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
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
          <a href="index.html" class="logo">
            <div class="iq-light-logo">
              <img src="images/logo.gif" class="img-fluid" alt="">
            </div>
            <div class="iq-dark-logo">
              <img src="images/logo-dark.gif" class="img-fluid" alt="">
            </div>
            <span>vito</span>
          </a>
        </div>
      </div>
      <nav class="navbar navbar-expand-lg navbar-light p-0">
        <div class="navbar-left">
          <ul id="topbar-data-icon" class="d-flex p-0 topbar-menu-icon">
            <li class="nav-item">
              <a href="index.html" class="nav-link font-weight-bold search-box-toggle"><i class="ri-home-4-line"></i></a>
            </li>
            <li><a href="chat.html" class="nav-link"><i class="ri-message-line"></i></a></li>

            <li><a href="profile.html" class="nav-link"><i class="ri-question-answer-line"></i></a></li>
            <li><a href="todo.html" class="nav-link router-link-exact-active router-link-active"><i class="ri-chat-check-line"></i></a></li>
            <li><a href="app/index.html" class="nav-link"><i class="ri-inbox-line"></i></a></li>
          </ul>
          <div class="iq-search-bar d-none d-md-block">
            <form action="#" class="searchbox">
              <input type="text" class="text search-input" placeholder="Type here to search...">
              <a class="search-link" href="#"><i class="ri-search-line"></i></a>
              <div class="searchbox-datalink">
                <h6 class="pl-3 pt-3 pb-3">Pages</h6>
                <ul class="m-0 pl-3 pr-3 pb-3">
                  <li class="iq-bg-primary-hover rounded"><a href="index.html" class="nav-link router-link-exact-active router-link-active pr-2"><i class="ri-home-4-line pr-2"></i>Dashboard</a></li>
                  <li class="iq-bg-primary-hover rounded"><a href="dashboard-1.html" class="nav-link router-link-exact-active router-link-active pr-2"><i class="ri-home-3-line pr-2"></i>Dashboard-1</a></li>
                  <li class="iq-bg-primary-hover rounded"><a href="chat.html" class="nav-link"><i class="ri-message-line pr-2"></i>Chat</a></li>
                  <li class="iq-bg-primary-hover rounded"><a href="calendar.html" class="nav-link"><i class="ri-calendar-2-line pr-2"></i>Calendar</a></li>
                  <li class="iq-bg-primary-hover rounded"><a href="profile.html" class="nav-link"><i class="ri-profile-line pr-2"></i>Profile</a></li>
                  <li class="iq-bg-primary-hover rounded"><a href="todo.html" class="nav-link"><i class="ri-chat-check-line pr-2"></i>Todo</a></li>
                  <li class="iq-bg-primary-hover rounded"><a href="app/index.html" class="nav-link"><i class="ri-mail-line pr-2"></i>Email</a></li>
                  <li class="iq-bg-primary-hover rounded"><a href="e-commerce-product-list.html" class="nav-link"><i class="ri-message-line pr-2"></i>Product Listing</a></li>
                  <li class="iq-bg-primary-hover rounded"><a href="e-commerce-product-detail.html" class="nav-link"><i class="ri-file-list-line pr-2"></i>Product Details</a></li>
                  <li class="iq-bg-primary-hover rounded"><a href="pages-faq.html" class="nav-link"><i class="ri-compasses-line pr-2"></i>Faq</a></li>
                  <li class="iq-bg-primary-hover rounded"><a href="form-wizard.html" class="nav-link"><i class="ri-clockwise-line pr-2"></i>Form-wizard</a></li>
                </ul>
              </div>
            </form>
          </div>
        </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"  aria-label="Toggle navigation">
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
              <a class="search-toggle iq-waves-effect language-title" href="#"><img src="html/images/small/flag-01.png" alt="img-flaf" class="img-fluid mr-1" style="height: 16px; width: 16px;" /> English <i class="ri-arrow-down-s-line"></i></a>
              <div class="iq-sub-dropdown">
                <a class="iq-sub-card" href="#"><img src="html/images/small/flag-02.png" alt="img-flaf" class="img-fluid mr-2" />French</a>
                <a class="iq-sub-card" href="#"><img src="html/images/small/flag-03.png" alt="img-flaf" class="img-fluid mr-2" />Spanish</a>
                <a class="iq-sub-card" href="#"><img src="html/images/small/flag-04.png" alt="img-flaf" class="img-fluid mr-2" />Italian</a>
                <a class="iq-sub-card" href="#"><img src="html/images/small/flag-05.png" alt="img-flaf" class="img-fluid mr-2" />German</a>
                <a class="iq-sub-card" href="#"><img src="html/images/small/flag-06.png" alt="img-flaf" class="img-fluid mr-2" />Japanese</a>

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
                      <h5 class="mb-0 text-white">All Notifications<small class="badge  badge-light float-right pt-1">4</small></h5>
                    </div>

                    <a href="#" class="iq-sub-card" >
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
                    <a href="#" class="iq-sub-card" >
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
                    <a href="#" class="iq-sub-card" >
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
                    <a href="#" class="iq-sub-card" >
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
                      <h5 class="mb-0 text-white">All Messages<small class="badge  badge-light float-right pt-1">5</small></h5>
                    </div>
                    <a href="#" class="iq-sub-card" >
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
                    <a href="#" class="iq-sub-card" >
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
                    <a href="#" class="iq-sub-card" >
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
                    <a href="#" class="iq-sub-card" >
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
                    <a href="#" class="iq-sub-card" >
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
                    <a class="btn btn-primary dark-btn-primary" href="sign-in.html" role="button">Sign out<i class="ri-login-box-line ml-2"></i></a>
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
        <div class="col-sm-6 col-md-6 col-lg-3">
          <div class="iq-card iq-card-block iq-card-stretch ">
            <div class="iq-card-body">
              <div class="d-flex d-flex align-items-center justify-content-between">
                <div>
                  <h2>352</h2>
                  <p class="fontsize-sm m-0">Invoice Sent</p>
                </div>
                <div class="rounded-circle iq-card-icon dark-icon-light iq-bg-primary "> <i class="ri-inbox-fill"></i></div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-6 col-lg-3">
          <div class="iq-card iq-card-block iq-card-stretch ">

            <div class="iq-card-body">
              <div class="d-flex d-flex align-items-center justify-content-between">
                <div>
                  <h2>$37k</h2>
                  <p class="fontsize-sm m-0">Credited</p>
                </div>
                <div class="rounded-circle iq-card-icon iq-bg-danger"><i class="ri-radar-line"></i></div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-6 col-lg-3">
          <div class="iq-card iq-card-block iq-card-stretch ">
            <div class="iq-card-body">
              <div class="d-flex d-flex align-items-center justify-content-between">
                <div>
                  <h2>32%</h2>
                  <p class="fontsize-sm m-0">Employee Costs</p>
                </div>
                <div class="rounded-circle iq-card-icon iq-bg-warning "><i class="ri-price-tag-3-line"></i></div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-6 col-lg-3">
          <div class="iq-card iq-card-block iq-card-stretch ">
            <div class="iq-card-body">
              <div class="d-flex d-flex align-items-center justify-content-between">
                <div>
                  <h2>27h</h2>
                  <p class="fontsize-sm m-0">Payment Delay</p>
                </div>
                <div class="rounded-circle iq-card-icon iq-bg-info "><i class="ri-refund-line"></i></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6 col-lg-7">
          <div class="iq-card iq-card-block iq-card-stretch iq-card-height overflow-hidden">
            <div class="iq-card-header d-flex justify-content-between">
              <div class="iq-header-title">
                <h4 class="card-title">Invoice Stats</h4>
              </div>
              <div class="iq-card-header-toolbar d-flex align-items-center">
                <div class="dropdown">
                                 <span class="dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown">
                                 <i class="ri-more-fill"></i>
                                 </span>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton" >
                    <a class="dropdown-item" href="#"><i class="ri-eye-fill mr-2"></i>View</a>
                    <a class="dropdown-item" href="#"><i class="ri-delete-bin-6-fill mr-2"></i>Delete</a>
                    <a class="dropdown-item" href="#"><i class="ri-pencil-fill mr-2"></i>Edit</a>
                    <a class="dropdown-item" href="#"><i class="ri-printer-fill mr-2"></i>Print</a>
                    <a class="dropdown-item" href="#"><i class="ri-file-download-fill mr-2"></i>Download</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="iq-card-body">
              <div id="home-chart-02"></div>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-5">
          <div class="iq-card iq-card-block iq-card-stretch iq-card-height" style="background: transparent;">
            <div class="iq-card-body rounded p-0" style="background: url(images/page-img/01.png) no-repeat;    background-size: cover; height: 415px;">
              <div class="iq-caption">
                <h1>450</h1>
                <p>Invoice</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-8">
          <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
            <div class="iq-card-header d-flex justify-content-between">
              <div class="iq-header-title">
                <h4 class="card-title">Open Invoices</h4>
              </div>
              <div class="iq-card-header-toolbar d-flex align-items-center">
                <div class="dropdown">
                                 <span class="dropdown-toggle text-primary" id="dropdownMenuButton5" data-toggle="dropdown">
                                 <i class="ri-more-fill"></i>
                                 </span>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton5">
                    <a class="dropdown-item" href="#"><i class="ri-eye-fill mr-2"></i>View</a>
                    <a class="dropdown-item" href="#"><i class="ri-delete-bin-6-fill mr-2"></i>Delete</a>
                    <a class="dropdown-item" href="#"><i class="ri-pencil-fill mr-2"></i>Edit</a>
                    <a class="dropdown-item" href="#"><i class="ri-printer-fill mr-2"></i>Print</a>
                    <a class="dropdown-item" href="#"><i class="ri-file-download-fill mr-2"></i>Download</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="iq-card-body">
              <div class="table-responsive">
                <table class="table mb-0 table-borderless">
                  <thead>
                  <tr>
                    <th scope="col">Client</th>
                    <th scope="col">Date</th>
                    <th scope="col">Invoice</th>
                    <th scope="col" class="text-right">Amount</th>
                    <th scope="col" class="text-center">Status</th>
                    <th scope="col">Action</th>

                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>Ira Membrit</td>
                    <td>18/10/2019</td>
                    <td>20156</td>
                    <td class="text-right">$1500.00</td>
                    <td class="text-center"><div class="badge badge-pill iq-bg-success">Paid</div></td>
                    <td>
                      <i class="ri-ball-pen-fill text-success pr-1"></i>
                      <i class="ri-delete-bin-5-line text-danger"></i>
                    </td>
                  </tr>
                  <tr>
                    <td>Pete Sariya</td>
                    <td>26/10/2019</td>
                    <td>7859</td>
                    <td class="text-right">$2000.00</td>
                    <td class="text-center"><div class="badge badge-pill iq-bg-success">Paid</div></td>
                    <td>
                      <i class="ri-ball-pen-fill text-success pr-1"></i>
                      <i class="ri-delete-bin-5-line text-danger"></i>
                    </td>
                  </tr>
                  <tr>
                    <td>Cliff Hanger</td>
                    <td>18/11/2019</td>
                    <td>6396</td>
                    <td class="text-right">$2500.00</td>
                    <td class="text-center"><div class="badge badge-pill iq-bg-danger">Past Due</div></td>
                    <td>
                      <i class="ri-ball-pen-fill text-success pr-1"></i>
                      <i class="ri-delete-bin-5-line text-danger"></i>
                    </td>
                  </tr>
                  <tr>
                    <td>Terry Aki</td>
                    <td>14/12/2019</td>
                    <td>7854</td>
                    <td class="text-right">$5000.00</td>
                    <td class="text-center"><div class="badge badge-pill iq-bg-success">Paid</div></td>
                    <td>
                      <i class="ri-ball-pen-fill text-success pr-1"></i>
                      <i class="ri-delete-bin-5-line text-danger"></i>
                    </td>
                  </tr>
                  <tr>
                    <td>Anna Mull</td>
                    <td>24/12/2019</td>
                    <td>568569</td>
                    <td class="text-right">$10000.00</td>
                    <td class="text-center"><div class="badge badge-pill iq-bg-success">Paid</div></td>
                    <td>
                      <i class="ri-ball-pen-fill text-success pr-1"></i>
                      <i class="ri-delete-bin-5-line text-danger"></i>
                    </td>
                  </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
            <div class="iq-card-header d-flex justify-content-between">
              <div class="iq-header-title">
                <h4 class="card-title">Monthly Invoices</h4>
              </div>
              <div class="iq-card-header-toolbar d-flex align-items-center">
                <div class="dropdown">
                                 <span class="dropdown-toggle" id="dropdownMenuButton1" data-toggle="dropdown" >
                                 <i class="ri-more-fill"></i>
                                 </span>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton1" style="">
                    <a class="dropdown-item" href="#"><i class="ri-eye-fill mr-2"></i>View</a>
                    <a class="dropdown-item" href="#"><i class="ri-delete-bin-6-fill mr-2"></i>Delete</a>
                    <a class="dropdown-item" href="#"><i class="ri-pencil-fill mr-2"></i>Edit</a>
                    <a class="dropdown-item" href="#"><i class="ri-printer-fill mr-2"></i>Print</a>
                    <a class="dropdown-item" href="#"><i class="ri-file-download-fill mr-2"></i>Download</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="iq-card-body">
              <ul class="suggestions-lists m-0 p-0">
                <li class="d-flex mb-4 align-items-center">
                  <div class="profile-icon iq-bg-success"><span><i class="ri-check-fill"></i></span></div>
                  <div class="media-support-info ml-3">
                    <h6>Camelun ios</h6>
                    <p class="mb-0 fontsize-sm"><span class="text-success">17/23</span> months paid</p>
                  </div>
                  <div class="media-support-amount ml-3">
                    <h6><span class="text-secondary">$</span><b> 16,634.00</b></h6>
                    <p class="mb-0 d-flex justify-content-end">per month</p>
                  </div>
                </li>
                <li class="d-flex mb-4 align-items-center">
                  <div class="profile-icon iq-bg-warning"><span><i class="ri-check-fill"></i></span></div>
                  <div class="media-support-info ml-3">
                    <h6>React</h6>
                    <p class="mb-0 fontsize-sm"><span class="text-warning">12 weeks </span>Due</p>
                  </div>
                  <div class="media-support-amount ml-3">
                    <h6><span class="text-secondary">$</span><b> 6,000.00</b></h6>
                    <p class="mb-0 d-flex justify-content-end">per month</p>
                  </div>
                </li>
                <li class="d-flex mb-4 align-items-center">
                  <div class="profile-icon iq-bg-success"><span><i class="ri-check-fill"></i></span></div>
                  <div class="media-support-info ml-3">
                    <h6>Camelun ios</h6>
                    <p class="mb-0 fontsize-sm"><span class="text-success">16/23</span> months paid</p>
                  </div>
                  <div class="media-support-amount ml-3">
                    <h6><span class="text-secondary">$</span><b> 11,230.00</b></h6>
                    <p class="mb-0 d-flex justify-content-end">per month</p>
                  </div>
                </li>
                <li class="d-flex mb-1 align-items-center">
                  <div class="profile-icon iq-bg-danger"><span><i class="ri-check-fill"></i></span></div>
                  <div class="media-support-info ml-3">
                    <h6>Camelun ios</h6>
                    <p class="mb-0 fontsize-sm"><span class="text-danger">15/23</span> months paid</p>
                  </div>
                  <div class="media-support-amount ml-3">
                    <h6><span class="text-secondary">$</span><b> 10,050.00</b></h6>
                    <p class="mb-0 d-flex justify-content-end">per month</p>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-8 row m-0 p-0">
          <div class="col-md-12">
            <div class="iq-card iq-card-block iq-card-stretch ">
              <div class="iq-card-header d-flex justify-content-between">
                <div class="iq-header-title">
                  <h4 class="card-title">Exchange Rates</h4>
                </div>
                <div class="iq-card-header-toolbar d-flex align-items-center">
                  <div class="dropdown">
                                    <span class="dropdown-toggle" id="dropdownMenuButton-one" data-toggle="dropdown" >
                                    <i class="ri-more-fill"></i>
                                    </span>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton-one" style="">
                      <a class="dropdown-item" href="#"><i class="ri-eye-fill mr-2"></i>View</a>
                      <a class="dropdown-item" href="#"><i class="ri-delete-bin-6-fill mr-2"></i>Delete</a>
                      <a class="dropdown-item" href="#"><i class="ri-pencil-fill mr-2"></i>Edit</a>
                      <a class="dropdown-item" href="#"><i class="ri-printer-fill mr-2"></i>Print</a>
                      <a class="dropdown-item" href="#"><i class="ri-file-download-fill mr-2"></i>Download</a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="iq-card-body">
                <div id="home-chart-01"></div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="iq-card iq-card-block iq-card-stretch ">
              <div class="iq-card-header d-flex justify-content-between">
                <div class="iq-header-title">
                  <h4 class="card-title">Last costs</h4>
                </div>
                <div class="iq-card-header-toolbar d-flex align-items-center">
                  <div class="dropdown">
                                    <span class="dropdown-toggle" id="dropdownMenuButton-two" data-toggle="dropdown" >
                                    <i class="ri-more-fill"></i>
                                    </span>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton-two" style="">
                      <a class="dropdown-item" href="#"><i class="ri-eye-fill mr-2"></i>View</a>
                      <a class="dropdown-item" href="#"><i class="ri-delete-bin-6-fill mr-2"></i>Delete</a>
                      <a class="dropdown-item" href="#"><i class="ri-pencil-fill mr-2"></i>Edit</a>
                      <a class="dropdown-item" href="#"><i class="ri-printer-fill mr-2"></i>Print</a>
                      <a class="dropdown-item" href="#"><i class="ri-file-download-fill mr-2"></i>Download</a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="iq-card-body ">
                <div id="home-chart-05"></div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="iq-card iq-card-block iq-card-stretch ">
              <div class="iq-card-header d-flex justify-content-between">
                <div class="iq-header-title">
                  <h4 class="card-title">Efficiency</h4>
                </div>
                <div class="iq-card-header-toolbar d-flex align-items-center">
                  <div class="dropdown">
                                    <span class="dropdown-toggle" id="dropdownMenuButton-three" data-toggle="dropdown" >
                                    <i class="ri-more-fill"></i>
                                    </span>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton-three" style="">
                      <a class="dropdown-item" href="#"><i class="ri-eye-fill mr-2"></i>View</a>
                      <a class="dropdown-item" href="#"><i class="ri-delete-bin-6-fill mr-2"></i>Delete</a>
                      <a class="dropdown-item" href="#"><i class="ri-pencil-fill mr-2"></i>Edit</a>
                      <a class="dropdown-item" href="#"><i class="ri-printer-fill mr-2"></i>Print</a>
                      <a class="dropdown-item" href="#"><i class="ri-file-download-fill mr-2"></i>Download</a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="iq-card-body ">
                <div id="home-chart-11"></div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="iq-card iq-card-block iq-card-stretch ">
            <div class="iq-card-header d-flex justify-content-between">
              <div class="iq-header-title">
                <h4 class="card-title">Payment History</h4>
              </div>
              <div class="iq-card-header-toolbar d-flex align-items-center">
                <div class="dropdown">
                                 <span class="dropdown-toggle" id="dropdownMenuButton-four" data-toggle="dropdown" >
                                 <i class="ri-more-fill"></i>
                                 </span>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton-four" style="">
                    <a class="dropdown-item" href="#"><i class="ri-eye-fill mr-2"></i>View</a>
                    <a class="dropdown-item" href="#"><i class="ri-delete-bin-6-fill mr-2"></i>Delete</a>
                    <a class="dropdown-item" href="#"><i class="ri-pencil-fill mr-2"></i>Edit</a>
                    <a class="dropdown-item" href="#"><i class="ri-printer-fill mr-2"></i>Print</a>
                    <a class="dropdown-item" href="#"><i class="ri-file-download-fill mr-2"></i>Download</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="iq-card-body">
              <ul class="suggestions-lists m-0 p-0">
                <li class="d-flex mb-4 align-items-center">
                  <div class="profile-icon bg-secondary"><span><i class="ri-refresh-line"></i></span></div>
                  <div class="media-support-info ml-3">
                    <h6>Deposit from ATL</h6>
                    <p class="mb-0 fontsize-sm">5 march, 18:33</p>
                  </div>
                  <div class="media-support-amount ml-3">
                    <h6 class="text-info">- $1,470</h6>
                  </div>
                </li>
                <li class="d-flex mb-4 align-items-center">
                  <div class="profile-icon dark-icon bg-primary"><span><i class="ri-paypal-line"></i></span></div>
                  <div class="media-support-info ml-3">
                    <h6>Deposit PayPal</h6>
                    <p class="mb-0 fontsize-sm">5 march, 18:33</p>
                  </div>
                  <div class="media-support-amount ml-3">
                    <h6 class="text-primary">+ $2,220</h6>
                  </div>
                </li>
                <li class="d-flex mb-4 align-items-center">
                  <div class="profile-icon icon dark-icon bg-primary"><span><i class="ri-check-line"></i></span></div>
                  <div class="media-support-info ml-3">
                    <h6>Deposit from ATL</h6>
                    <p class="mb-0 fontsize-sm">5 march, 18:33</p>
                  </div>
                  <div class="media-support-amount ml-3">
                    <h6 class="text-primary">+ $250</h6>
                  </div>
                </li>
                <li class="d-flex mb-4 align-items-center">
                  <div class="profile-icon bg-info"><span><i class="ri-close-line"></i></span></div>
                  <div class="media-support-info ml-3">
                    <h6>Cancelled</h6>
                    <p class="mb-0 fontsize-sm">5 march, 18:33</p>
                  </div>
                  <div class="media-support-amount ml-3">
                    <h6 class="text-info">$0</h6>
                  </div>
                </li>
                <li class="d-flex mb-4 align-items-center">
                  <div class="profile-icon bg-info"><span><i class="ri-arrow-go-back-fill"></i></span></div>
                  <div class="media-support-info ml-3">
                    <h6>Refund</h6>
                    <p class="mb-0 fontsize-sm">5 march, 18:33</p>
                  </div>
                  <div class="media-support-amount ml-3">
                    <h6 class="text-info">- $500</h6>
                  </div>
                </li>
                <li class="d-flex mb-4 align-items-center">
                  <div class="profile-icon bg-secondary"><span><i class="ri-bar-chart-grouped-fill"></i></span></div>
                  <div class="media-support-info ml-3">
                    <h6>Credit from ATL</h6>
                    <p class="mb-0 fontsize-sm">5 march, 18:33</p>
                  </div>
                  <div class="media-support-amount ml-3">
                    <h6 class="text-primary">+ $169</h6>
                  </div>
                </li>
                <li class="d-flex mb-4 align-items-center">
                  <div class="profile-icon bg-warning"><span><i class="ri-qr-scan-line"></i></span></div>
                  <div class="media-support-info ml-3">
                    <h6>Deposit from Paypal</h6>
                    <p class="mb-0 fontsize-sm">5 march, 18:33</p>
                  </div>
                  <div class="media-support-amount ml-3">
                    <h6 class="text-info">- $1,470</h6>
                  </div>
                </li>
                <li class="d-flex mb-0 align-items-center">
                  <div class="profile-icon bg-danger"><span><i class="ri-mail-send-fill"></i></span></div>
                  <div class="media-support-info ml-3">
                    <h6>Refund Amount</h6>
                    <p class="mb-0 fontsize-sm">5 march, 18:33</p>
                  </div>
                  <div class="media-support-amount ml-3">
                    <h6 class="text-primary">+ $9,480</h6>
                  </div>
                </li>
              </ul>
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