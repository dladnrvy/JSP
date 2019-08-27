<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>   
</head>
<style>
    #main{
        display: inline-block;
        width: 200px;
        height: 300px;
        border: 2px solid #DDD;
        margin: 5px;
       
    }
    #photo{
        width :200px;
        height :200px;
    }
    
    
    
</style>
<body>
	<!--메인 리스트-->
    
	<div id="contents">
	<h3>유용한 정보/반려동물훈련법</h3>
	<hr>
    <div id="list"></div>
	</div>
    <hr>
    <a href="write" id="write">글쓰기</a>
    <input type="text" value="Search" id="search">
	
<script>
	$(document).ready(function() {
       list(); 
    });
    
		function list() {
			
			$.ajax({	
				url: 'http://localhost:8080/info/main',
				type : 'GET',
                /*dataType: 'json',*/
                /*enctype: 'multipart/form-data',*/
               contentType : 'application/json; charset=utf-8',
                dataType : 'json',
				success : function(data) {
                    
					/* var list = JSON.parse(data); */
					var list = eval(data);
                    var html = '';
                 
                    
                    var PATH = 'C:\\git\\JSP\\Spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\petsite-info\\uploadfile/';
                    
					for(i=0; i<list.length; i++){
                        html += '<div id="main">'
                        html += '<div id="idx">'+list[i].idx+'</div>\n';
                        html += '<div class="list" id="photo"><img src="'+PATH+list[i].photo +'"/></div>\n';
                        html += '<div class="list" id="title">'+list[i].title +'</div>\n';
                        html += '<div class="list" id="uId">'+list[i].uId +'</div>\n';
                        html += '<div class="list" id="date">'+list[i].date+'</div>\n';
                        html += '</div>'
                    }
                    
                                                                                                       
                    
                    $('#list').html(html);
				}			
				
			});
		};
        
        

     
    
		
	


</script>


</body>
</html>