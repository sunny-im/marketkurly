<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Dashboard</title>
	
	<%@ include file="../inc/head_link.jsp" %>
  <!-- summernote -->
  <link rel="stylesheet" href="/resources/admin/plugins/summernote/summernote-bs4.min.css">
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">

</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="/resources/admin/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

  <!-- Navbar -->
  <%@ include file="../inc/navbar.jsp" %>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <%@ include file="../inc/sidebar.jsp" %>  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">카테고리 대분류</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-12">
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">대분류</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form name="form1" enctype="multipart/form-data">
                <div class="card-body">
                
                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="카테고리 입력.." name="category_name">
                  </div>
                  
                <!-- /.card-body -->
				<div id="preview"></div>
	            <input type="file"  multiple name="imgFiles" >
                <div class="card-footer">
                  <button type="button" class="btn btn-info" id="bt_regist">카테고리 등록</button>
                  <button type="button" class="btn btn-info" onClick="location.href='/admin/category/list';">목록</button>
                </div>
              </form>
            </div>
          
            
            <!-- /.card -->
          </div>
        </div>
        
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  <%@ include file="../inc/footer.jsp" %>  
  

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<%@ include file="../inc/bottom_link.jsp" %>

<!-- Summernote -->
<script src="/resources/admin/plugins/summernote/summernote-bs4.min.js"></script>

<!-- bs-custom-file-input 파일컴포넌트 커스터마이징 -->
<script src="/resources/admin/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>

<script>
$(function () {
  bsCustomFileInput.init();
});
</script>
<script>
 $(function () {
	 $("input[name='imgFiles']").change(function(){
			preview(this);		    	
	    });
	 
	$("#bt_regist").click(function(){
		regist();
	});
	
})

function regist(){
	$("form[name='form1']").attr({
		action:"/admin/category/regist",
		method:"post"
	});		 
	$("form[name='form1']").submit();
}
 
function preview(obj){
	for(var i=0;i<obj.files.length;i++){		
		var reader = new FileReader();
		reader.onload=function(e){
		 $("#preview").append($("<img src='"+e.target.result+"' width='100px'>"));
		 
		}
		reader.readAsDataURL(obj.files[i]);
	}
}
 
</script>
</body>
</html>
