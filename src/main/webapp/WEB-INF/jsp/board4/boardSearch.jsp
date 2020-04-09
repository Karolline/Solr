<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>board4</title>
<script>
	function fn_formSubmit(){
		document.form1.submit();
	}
</script>
</head>
<body>
	<form id="form1" name="form1" method="post">
		<div>
			<input type="text" name="q" style="width: 150px; maxlength="50"
					value='<c:out value="${q}"/>' onkeydown="if(event.keyCode == 13) { fn_formSubmit();}">
			<input name="btn_search" value="검색" class="btn_sch" type="button" onclick="fn_formSubmit()" />
		</div>
	</form>
	
	<table border="1" style="width: 350px">
		<caption>검색 결과</caption>
		<colgroup>
			<col width='8%' />
			<col width='*%' />
			<col width='15%' />
			<col width='15%' />
			<col width='10%' />
			<col width='10%' />
		</colgroup>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>등록자</th>
				<th>등록일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="listview" items="${listview}" varStatus="status">
				<c:url var="link" value="board4Read">
					<c:param name="brdno" value="${listview.id}" />
				</c:url>
				<tr>
		          <td><c:out value="${listview.id}"/></td>
		          <td style="max-width: 100px; border: 1px solid black; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">
		            <a href="${link}"><c:out value="${listview.title}"/></a>
		          </td>
		          <td><c:out value="${listview.writer}"/></td>
		          <td><c:out value="${listview.date}"/></td>
		        </tr>
			</c:forEach>
		</tbody>
		
	</table>
	
</body>
</html>