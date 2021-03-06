<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    
      <table class="table table-hover">
      <thead>   
         <tr>
            <th>글번호</th>
            <th>글제목</th>
            <th>글쓴이</th>
            <th>쓴날짜</th>
            <th>최종수정날짜</th>
            <th>조회수</th>
         </tr>
      </thead>
      <tbody>
         <c:forEach var="board" items="${boardList }">
            <tr>
               <td>${board.board_num }</td>
               <td><a href="http://localhost:8181/MyFirstWeb/boardDetail.do?board_num=${board.board_num}">${board.title }</a></td>
               <td>${board.title }</td>
               <td>${board.writer }</td>
               <td>${board.bdate }</td>
               <td>${board.mdate }</td>
               <td>${board.hit }</td>
            </tr>
         </c:forEach>
      </tbody>
   </table>
   <c:if test="${sId ne null }"> 
   <!-- not empty sId, sessionScope.session_id ne null 구문으로 사용 가능  -->
		<a href="http://localhost:8181/MyFirstWeb/insertForm.do"><button>글쓰기</button></a>
   </c:if>
   <c:if test="${sessionScope.session_id ne null }">
   		<a href="http://localhost:8181/MyFirstWeb/insertForm.do">글쓰기</a>
   </c:if>
	
	<!-- document의 pagination 파트를 보고 1부터 10까지 나열해보세요. -->
<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
	<li class="page-item ${dto.startPage eq 1 ? 'disabled' : ''}">
		<a class="page-link" href="http://localhost:8181/MyFirstWeb/boardList.do?pageNum=${dto.startPage - 1 }">&laquo;</a></li>
	<c:forEach var="pageIndex" begin="${dto.startPage }" end="${dto.endPage }">
    <li class="page-item"><a class="page-link" href="http://localhost:8181/MyFirstWeb/boardList.do?pageNum=${pageIndex }">${pageIndex }</a></li>
    </c:forEach>
    <li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
  </ul>
</nav>
	<hr/>
	<h3>부트스트랩 없이 만들기</h3>
	
	<c:forEach var="pageIndex" begin="${dto.startPage }" end="${dto.endPage }">
		<a href="http://localhost:8181/MyFirstWeb/boardList.do?pageNum=${pageIndex }">[${pageIndex }]</a>
	</c:forEach>
</body>
</html>