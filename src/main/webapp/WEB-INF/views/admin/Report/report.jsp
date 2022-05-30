<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>관리자 페이지 - 댓글신고</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/resources/admin/plugins/fontawesome-free/css/all.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="/resources/admin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="/resources/admin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="/resources/admin/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/resources/admin/dist/css/adminlte.min.css">
<style>
  .card-body {
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    min-height: 1px;
    padding-top: 0px;
    padding-right: 1.25rem;
    padding-left: 1.25rem;

}
#report{
  margin: 10px;
}




</style>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  
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
              <li class="breadcrumb-item active">DataTables</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- ---------------------------------------------------------------------------------- -->
          <div class="col-12">
            <div class="card card-primary card-tabs">
              <div class="card-header p-0 pt-1">
                <ul class="nav nav-tabs" id="custom-tabs-two-tab" role="tablist">
                  <li class="nav-item">
                    <a class="nav-link active" id="custom-tabs-two-home-tab" data-toggle="pill" href="#custom-tabs-two-home" role="tab" aria-controls="custom-tabs-two-home" aria-selected="true">댓글관리</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="custom-tabs-two-profile-tab" data-toggle="pill" href="#custom-tabs-two-profile" role="tab" aria-controls="custom-tabs-two-profile" aria-selected="false">게시글관리</a>
                  </li>
                  
                </ul>
              </div>
              <div class="card-body">
                <div class="tab-content" id="custom-tabs-two-tabContent">
                  <div class="tab-pane fade show active" id="custom-tabs-two-home" role="tabpanel" aria-labelledby="custom-tabs-two-home-tab">
                   <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">댓글신고</h3>
              </div>
              <div class="col-2">
                <button type="button" class="btn btn-block btn-outline-primary" id="report">신고</button>
              </div>
              <!-- /.card-header -->
              
              <div class="card-body">
                
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                     <th>유형</th>
                    <th>내용</th>
                    <th>작성자</th>
                    <th>신고자</th>
                    <th>날짜</th>
                    <th>상태</th>
                   
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>\</td>
                    <td>Internet
                      Explorer 4.0
                    </td>
                    <td>Win 95+</td>
                    <td> 4</td>
                    <td>X</td>
                    <td><div class="btn btn-block btn-danger">반려</div></td>
                  </tr>

                 
                 <tbody>
                 <tr>
                   <td><div class="icheck-primary">
                     <input type="checkbox" value="" id="check1">
                     <label for="check1"></label>
                   </div></td>
                   <td>Internet
                     Explorer 4.0
                   </td>
                   <td>Win 95+</td>
                   <td> 4</td>
                   <td>X</td>
                   <td><div class="btn btn-block btn-success">완료</div></td>
                 </tr>

          
               <tbody>
               <tr>
                 <td><div class="icheck-primary">
                   <input type="checkbox" value="" id="check1">
                   <label for="check1"></label>
                 </div></td>
                 <td>Internet
                   Explorer 4.0
                 </td>
                 <td>Win 95+</td>
                 <td> 4</td>
                 <td>X</td>
                 <td><div class="btn btn-block btn-secondary">대기</div></td>
               </tr>
                  
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            
          </div>
          <!-- /.col -->
                  
                  </div>
                  <div class="tab-pane fade" id="custom-tabs-two-profile" role="tabpanel" aria-labelledby="custom-tabs-two-profile-tab">
                  <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">게시글신고</h3>
              </div>
              <div class="col-2">
                <button type="button" class="btn btn-block btn-outline-primary" id="report">신고</button>
              </div>
              <!-- /.card-header -->
              
              <div class="card-body">
                
                <table id="example3" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                     <th>신고 유형</th>
                    <th>신고 내용</th>
                    <th>작성자/신고자</th>
                    <th>횟수</th>
                    <th>날짜</th>
                    <th>상태</th>
                   
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td> z</td>
                    <td>Internet
                      Explorer 4.0
                    </td>
                    <td>Win 95+</td>
                    <td> 4</td>
                    <td>X</td>
                    <td><div class="btn btn-block btn-danger">반려</div></td>
                  </tr>

                 
                 <tbody>
                 <tr>
                   <td><div class="icheck-primary">
                     <input type="checkbox" value="" id="check1">
                     <label for="check1"></label>
                   </div></td>
                   <td>Internet
                     Explorer 4.0
                   </td>
                   <td>Win 95+</td>
                   <td> 4</td>
                   <td>X</td>
                   <td><div class="btn btn-block btn-success">완료</div></td>
                 </tr>
	
          
               <tbody>
               <tr>
                 <td><div class="icheck-primary">
                   <input type="checkbox" value="" id="check1">
                   <label for="check1"></label>
                 </div></td>
                 <td>Internet
                   Explorer 4.0
                 </td>
                 <td>Win 95+</td>
                 <td> 4</td>
                 <td>X</td>
                 <td><div class="btn btn-block btn-secondary">대기</div></td>
               </tr>
                  
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            
          </div>
          <!-- /.col -->
                  </div>
                  <div class="tab-pane fade" id="custom-tabs-two-messages" role="tabpanel" aria-labelledby="custom-tabs-two-messages-tab">
                     Morbi turpis dolor, vulputate vitae felis non, tincidunt congue mauris. Phasellus volutpat augue id mi placerat mollis. Vivamus faucibus eu massa eget condimentum. Fusce nec hendrerit sem, ac tristique nulla. Integer vestibulum orci odio. Cras nec augue ipsum. Suspendisse ut velit condimentum, mattis urna a, malesuada nunc. Curabitur eleifend facilisis velit finibus tristique. Nam vulputate, eros non luctus efficitur, ipsum odio volutpat massa, sit amet sollicitudin est libero sed ipsum. Nulla lacinia, ex vitae gravida fermentum, lectus ipsum gravida arcu, id fermentum metus arcu vel metus. Curabitur eget sem eu risus tincidunt eleifend ac ornare magna.
                  </div>
                  <div class="tab-pane fade" id="custom-tabs-two-settings" role="tabpanel" aria-labelledby="custom-tabs-two-settings-tab">
                     Pellentesque vestibulum commodo nibh nec blandit. Maecenas neque magna, iaculis tempus turpis ac, ornare sodales tellus. Mauris eget blandit dolor. Quisque tincidunt venenatis vulputate. Morbi euismod molestie tristique. Vestibulum consectetur dolor a vestibulum pharetra. Donec interdum placerat urna nec pharetra. Etiam eget dapibus orci, eget aliquet urna. Nunc at consequat diam. Nunc et felis ut nisl commodo dignissim. In hac habitasse platea dictumst. Praesent imperdiet accumsan ex sit amet facilisis.
                  </div>
                </div>
              </div>
              <!-- /.card -->
            </div>
          </div>
          <!-- ---------------------------------------------------------------------------------- -->
        
         
          
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.2.0
    </div>
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>

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
<!-- DataTables  & Plugins -->
<script src="/resources/admin/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/resources/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="/resources/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src=/resources/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="/resources/admin/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="/resources/admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="/resources/admin/plugins/jszip/jszip.min.js"></script>
<script src="/resources/admin/plugins/pdfmake/pdfmake.min.js"></script>
<script src="/resources/admin/plugins/pdfmake/vfs_fonts.js"></script>
<script src="/resources/admin/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="/resources/admin/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="/resources/admin/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<script src="/resources/admin/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/resources/admin/dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
    $('#example3').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
</body>
</html>
    