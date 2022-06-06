<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>COOBBY | ADMIN</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/resources/admin/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/resources/admin/dist/css/adminlte.min.css">
  
  <style type="text/css">
 #inputDescription{
 	background-color: white
 }
  </style>
  
</head>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

  <jsp:include page="../navbar/admin-nav.jsp"/>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>신고관리</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">신고 관리</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
    
     <form method="get" name="form" action="reportupdate">
    <input name="reportNo" type="hidden" value="${boList.reportNo}" />
    <input name="reportSusid" type="hidden" value="${boList.reportSusid}" />
      <div class="row">
        <div class="col-md-12">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">신고 댓글</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body">
          
              <div class="form-group">
                <label for="inputName">작성자</label>
                <div  id="inputName" class="form-control">${boList.reportSusid }</div>
              </div>
              <div class="form-group">
                <label for="inputClientCompany">신고자</label>
               <div  id="inputName" class="form-control">${boList.reportVicid }</div>
              </div>
              <div class="form-group">
                <label for="inputDescription">작성 내용</label>
                <textarea id="inputDescription" class="form-control" rows="4">${boList.reportContent }</textarea>
              </div>
              
              
              <div class="form-group">
                <label for="inputStatus">신고 타입</label>
                <select id="inputStatus" name="reportApply" class="form-control custom-select">
                  <option value="1">신고</option>
                  <option value="2">반려</option>
                  <option value="3">블랙리스트</option>
                </select>
              </div>
            
            
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
  
      </div>
      <div class="row">
        <div class="col-12">
          
          <input type="submit" value="등록" class="btn btn-success float-right" onclick="javascript: form.action='reportupdate';">
        </div>
      </div>
      </form>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

 

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="/resources/admin/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/resources/admin/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/resources/admin/dist/js/demo.js"></script>
</body>
</html>
    