<%@ page contentType="text/html; charset=UTF-8"%>
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/" class="brand-link" target="_blank">
      <img src="/resources/admin/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">마켓컬리 바로가기</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <!-- <img src="/resources/admin/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image"> -->
        </div>
        <div class="info">
          <a href="#" class="d-block">관리자 페이지 입니다</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          
          
          <!-- 주메뉴 begin -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                상품관리
                <i class="fas fa-angle-left right"></i>
                <!-- <span class="badge badge-info right">6</span> -->
              </p>
            </a>
            
            
            
            <!-- 자식메뉴 begin -->
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/category/list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>카테고리</p>
                </a>
              </li>
            </ul>
            <!-- 자식메뉴 end -->
            
            <!-- 자식메뉴 begin -->
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/product/list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>상품</p>
                </a>
              </li>
            </ul>
            <!-- 자식메뉴 end -->
            
          </li>
          <!-- 주메뉴 end -->

          <!-- 주메뉴 begin -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                회원관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <!-- 자식메뉴 begin -->
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/member/list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>회원리스트</p>
                </a>
              </li>
            </ul>
            <!-- 자식메뉴 end -->
          </li>
          <!-- 주메뉴 end -->
          
          
          <!-- 주메뉴 begin -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                주문관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            
            
            <!-- 자식메뉴 begin -->
            <ul class="nav nav-treeview">
          <li class="nav-item">
                <a href="/admin/order/list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>주문 내역</p>
                </a>
              </li>
            </ul>
            <!-- 자식메뉴 end -->
          </li>
          <!-- 주메뉴 end -->
          
          <!-- 주메뉴 begin -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                고객센터
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            
            <!-- 자식메뉴 begin -->
            <ul class="nav nav-treeview">
          <li class="nav-item">
                <a href="/admin/notice/list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>공지사항</p>
                </a>
              </li>
            </ul>
            <!-- 자식메뉴 end -->
            
            <!-- 자식메뉴 begin -->
            <ul class="nav nav-treeview">
          <li class="nav-item">
                <a href="/admin/faq/faq" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>자주하는 질문</p>
                </a>
              </li>
            </ul>
            <!-- 자식메뉴 end -->
            
            <!-- 자식메뉴 begin -->
            <!-- <ul class="nav nav-treeview">
          <li class="nav-item">
                <a href="/admin/customer/my_qna" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>1:1 문의</p>
                </a>
              </li>
            </ul> -->
            <!-- 자식메뉴 end -->
          </li>
           <!-- 주메뉴 begin -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                관리자
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
             <!-- 자식메뉴 begin -->
            <ul class="nav nav-treeview">
          	<li class="nav-item">
                <a href="/admin/login/list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>관리자 등록</p>
                </a>
              </li>
            </ul>
            <!-- 자식메뉴 end -->
          <!-- 주메뉴 end -->
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
