<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <!-- BEGIN PAGINATOR -->
        <div class="row">
          <div class="col-md-4 col-sm-4 items-info">Page ${page.currentPage } of  ${page.totalPage }</div>
          <div class="col-md-8 col-sm-8">
            <ul class="pagination pull-right">
              <li><a href="javascript:backPage();">&laquo;</a></li>
              <%
              String temp = request.getAttribute("totalPage").toString();
              int totalPage = Integer.parseInt(temp);
              for(int i=1;i<=totalPage;i++){
            	  out.println("<li><a href=javascript:changeCurrentPage("+i+");>"+i+"</a><li>");
            	  }
              %>
              
              <li><a href="javascript:nextPage();">&raquo;</a></li>
            </ul>
          </div>
        </div>
        <!-- END PAGINATOR -->
        <script type="text/javascript">
		
		function backPage(){
			// Set the value of currentPage
			document.getElementById("currentPage").value = ${page.currentPage == 1?1: page.currentPage-1};
			// submit the form
			document.getElementById("myForm").submit();
		}
	
		function nextPage(){
			// Get the next page data
			// Set the value of currentPage
			document.getElementById("currentPage").value = ${page.currentPage == page.totalPage?page.totalPage:page.currentPage+1};
			// submit the form
			document.getElementById("myForm").submit();
		}
	
		// Change the current page directly
		function changeCurrentPage(page){
			// Get the next page data
			// Set the value of currentPage
			document.getElementById("currentPage").value = page;
			// submit the form
			document.getElementById("myForm").submit();
		}
		
	</script>
</body>
</html>