<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>

    <link href="../css/bootstrap.min.css" rel="stylesheet">
  </head>
  
  <body>

	<input type="text" name="name" id="name">
	<input type="text" name="age" id="age">
  	<button id="sendBtn">전송</button><hr>
	
	<button id ="clickBtn">Click</button>
	<div class="msg"></div>
	
	좋아하는장르
	<select id="genre">
		<option>선택하세요</option>
		<option>호러</option>
		<option>로코</option>		
	</select>
	영화
	<select id="movie">
		<option>선택하세요</option>		
	</select><hr>

	<table class="table table-striped">
		  <thead>
		   <tr>
		     <th>번 호 </th><th>제 목</th><th>글쓴이</th>
		   </tr>
		   </thead>
		   <tbody id="tbody"></tbody>    
	 </table>
	 <button id="tableBtn">검색</button>
	 
	 
	 
		 
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        <h4 class="modal-title" id="myModalLabel">모달 제목 </h4>
	      </div>
	      <div class="modal-body">
	
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
	        <button type="button" class="btn btn-primary">변경 사항 저장</button>
	      </div>
	    </div> <!-- 모달 콘텐츠 -->
	  </div> <!-- 모달 다이얼로그 -->
	</div> <!-- 모달 전체 윈도우 -->
	


   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  	
  	<script type = "text/javascript">
  		var name = "jslim"
  		var age  = 10 ;
  		
  		function showMsg(){
  			return "리턴타입없이 리턴이 가능하다";
  		}
  		function argumentMsg(msg){
  			alert(msg);
  		}

  		var obj = {id: "jslim",pwd:"jslim"}
  		var ary = [
  					{seq:1,title:'첫',writer:'관리자',content:"내용1"},
  					{seq:2,title:'두',writer:'노창환',content:"내용2"},
  					{seq:3,title:'세',writer:'임정섭',content:"내용3"}
  				   ]; // ArrayList<xxxVO>
  					
  		var horrorAry = ['링','여고괴담','폰','알포인트'];
  		var locoAry   = ['나의사랑나의신부','군함도','뭐시기'];
  		
  		/////////////////////////////////
  		$(document).ready(function(){
  			$("#sendBtn").click(function(){
  				if($("#name").val()==""){
  					alert("이름을 입력하세요");
  				return false;
  				}else if($("#age").val()== ""){
  					alert("나이를  입혁하세요 ");
  				return false;
  				}else{
  					location.href="";
  					}
  			});
  				
  			$("#clickBtn").click(function(){
  				var id = obj.id;
				var pwd = obj.pwd;
				$(".msg").text("<font color='red'>" + id + "</font>이고"+pwd+"입니다");
  			});
  			
  			$("#genre").change(function(){
				alert($(this).val());
				if($(this).val()=='호러'){
					showOption(horrorAry);
				}else{
					showOption(locoAry);
				}  				
  			});
  			
  			$("#tableBtn").click(function(){
  				var txt="";
  				$.each(ary,function(idx,data){
  					txt += "<tr><td>"+data.seq+"</td>";
  					txt += "<td><a href=javascript:showModal('"+data.content+"')>"+data.title+"</a></td>";
  					txt += "<td>"+data.writer+"</td></tr>";
  				});
  				
  				$("#tbody").empty();
  				$("#tbody").append(txt);
  				
  			});
  		});
  		
  		function showOption(ary){
  			$("#movie").empty();
  			for(var i=0;i<ary.length;i++){
  				var item = ary[i];
  				$("#movie").append("<option>"+item+"</option>");
  			}
  		}
  		
  		function showModal(content){
  			alert(content);
  			$("#contentModal").modal('show');
  			$(".modal-body").empty().append(content);
  		}
  	</script>
  	
  	
  	
  </body>
</html>