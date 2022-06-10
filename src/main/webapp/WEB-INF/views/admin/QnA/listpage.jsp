<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | DataTables</title>

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
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

	<jsp:include page="../navbar/admin-nav.jsp" />
 
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Q&A 목록</h1><br/><br/>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">

            <div class="card">
              <div class="card-body" style="text-align:center;">
               <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th style="width: 8.33%;">번호</th>
                    <th style="width: 60%;">제목</th>
                    <th>작성일</th>
                    <th style="width: 8.33%;">답변여부</th>
                  </tr>
                  </thead>
                    <tbody>
                  <c:forEach items="${qnaList }" var="qna">
                  <tr>
                    <td>${qna.qnaNo }</td>
                    <td style="text-align:left"><a href="insertpage?qnaNo=${qna.qnaNo }">${qna.qtitle }</a></td>
                    <td>${qna.qdate }</td>
                    <td>
                    <c:choose>
							<c:when test="${empty qna.acontent}">미답변</c:when>
							<c:otherwise>답변완료</c:otherwise>											
					</c:choose>
					</td>
                  </tr>
                  </c:forEach>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
			</div>
         </div>

         
        </div>

      <!-- /.container-fluid -->
    </section>
    </div>
    <!-- /.content -->
  </div>


  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
<!-- ./wrapper -->

<!-- jQuery -->
<script src="/resources/admin/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="/resources/admin/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/resources/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="/resources/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="/resources/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
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
	  $('#example2').DataTable({
	      "paging": true,
	      "lengthChange": false,
	      "searching": true,
	      "ordering": true,
	  		"order" : [[3,'desc'],[2,'desc']],
	      "info": true,
	      "autoWidth": false,
	      "responsive": true,
	    });
		
  });
</script>
</body>
</html>
