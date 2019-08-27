<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>   
</head>
<body>
	<!-- 취소 저장
		작성자 아이디 : 수정불가 
		제목 , 내용 
	 -->
	<div id="contents">
	<h3>유용한 정보</h3>
	
		<input type="button" value="취소" id="cencle">
	<form id="form" enctype="multipart/form-data">
		<input type="submit" value="작성">
		
		<input type="text" name="uId" id="uId">
		<input type="text" name="title" id="title">
		<input type="file" name="photo" id="photo">
		<textarea rows="3" cols="30" name="text" id="text"></textarea>
	</form>
	
	
	</div>
	
<script>
	$(document).ready(function() {
        
    
		$('#form').submit(function() {
			
            /*var form = $('#form')[0];*/
            var formData = new FormData();
            
            formData.append("uId",$('#uId').val());
            formData.append("title",$('#title').val());
            formData.append("text",$('#text').val());
            formData.append("photo",$('#photo')[0].files[0]);
            
			$.ajax({
				
				url: 'http://localhost:8080/info/write',
				type : 'POST',
				data : formData,
                contentType: false,
                processData: false,
				success : function(data) {
					alert(data);
				}			
				
			});
			return false;
		});
        
        
        $('#cencle').click(function(){
            
            
            
            
        });
        

     });
    
		
	


</script>


</body>
</html>