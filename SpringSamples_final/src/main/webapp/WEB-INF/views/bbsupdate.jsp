<%@page import="mul.cam.a.dto.BbsDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
// controller ���� �� ���밡������ �����
BbsDto getCheckedBoard = (BbsDto)request.getAttribute("getCheckedBoard"); // controller ���� model.addAttribute �� property ��������
%>

<h1>�� �����ϱ�</h1>

<div align="center">
	<form action="bbsupdateAf.do" id="frm" method="post">
		<table border="1">
			<col width="200"><col width="500">
			
			<tr>
				<th>���̵�</th>
				<td>
					<input type="hidden" name="id" value="<%=getCheckedBoard.getId() %>" readonly="readonly">
				</td>
			</tr>
			<tr>
				<th>����</th>
				<td>
					<input type="text" id="title" name="title" size="50px" class="form-control form-control-lg" value="<%=getCheckedBoard.getTitle() %>">
				</td>
			</tr>
			<tr>
				<th>����</th>
				<td>
					<textarea rows="10" id="content" name="content" class="form-control" placeholder="�������"><%=getCheckedBoard.getContent() %></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<!-- <input type="submit" value="�۾���"> -->
					<input type="submit" value="�����ϱ�">
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>