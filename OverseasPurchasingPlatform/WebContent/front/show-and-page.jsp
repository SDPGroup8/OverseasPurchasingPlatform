<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="row list-view-sorting clearfix">
          <div class="col-md-2 col-sm-2 list-view">
            <a href="javascript:;"><i class="fa fa-th-large"></i></a>
            <a href="javascript:;"><i class="fa fa-th-list"></i></a>
          </div>
          <div class="col-md-10 col-sm-10">
            <div class="pull-right">
              <label class="control-label">Show:</label>
              <select class="form-control input-sm" onchange="changePageSize(this.value)" name="s">
                <option value="6" selected>6</option>
                <option value="9">9</option>
                <option value="12">12</option>
                <option value="15">15</option>
              </select>
            </div>
            <div class="pull-right">
              <label class="control-label">Sort&nbsp;By:</label>
              <select class="form-control input-sm">
                <option value="#?sort=p.sort_order&amp;order=ASC" selected="selected">Default</option>
                <option value="#?sort=pd.name&amp;order=ASC">Name (A - Z)</option>
                <option value="#?sort=pd.name&amp;order=DESC">Name (Z - A)</option>
                <option value="#?sort=p.price&amp;order=ASC">Price (Low &gt; High)</option>
                <option value="#?sort=p.price&amp;order=DESC">Price (High &gt; Low)</option>
                <option value="#?sort=rating&amp;order=DESC">Rating (Highest)</option>
                <option value="#?sort=rating&amp;order=ASC">Rating (Lowest)</option>
                <option value="#?sort=p.model&amp;order=ASC">Model (A - Z)</option>
                <option value="#?sort=p.model&amp;order=DESC">Model (Z - A)</option>
              </select>
            </div>
          </div>
        </div>
        <script type="text/javascript">
        function changePageSize(size){
        	 var selects = document.getElementsByName("s");
             for(var len=selects.length,i=0;i<len;i++){
               if(selects[i].value==size){
            	   selects[i].selected=true;
               }
             }
			document.getElementById("currentPage").value = 1;
			document.getElementById("pageSize").value = size;
			document.getElementById("myForm").submit();
		}
        </script>
</body>
</html>