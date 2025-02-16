<%@page import="com.example.entity.Note"%>
<%@page import="com.example.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="jakarta.servlet.http.HttpServletRequest" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@ include file="navbar.jsp"%>
		<h1>Edit your note</h1>

		<%
		
		int noteId=Integer.parseInt(request.getParameter("note_id").trim());

		Session s = FactoryProvider.getFactory().openSession();

		Note note = (Note)s.get(Note.class, noteId);
				
		%>
	
		<form action="UpdateServlet" method="post">
		
			<input value="<%= note.getId() %>" name="noteId" />
		
			<div class="form-group">
				<label for="title">Note title</label> <input name="title" required="required" type="text"
					class="form-control" id="title" aria-describedby="emailHelp"
					placeholder="Enter here"
					value="<%= note.getTitle() %>" >

			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" required="required" id="content" placeholder="Enter your content here"
					class="form-control" style="height: 300px;"><%= note.getContent() %>
					</textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save your note</button>
			</div>
		</form>


	</div>



</body>
</html>