<%-- 
    Document   : course-form
    Created on : Apr 17, 2025, 12:29:46?PM
    Author     : Admin
--%>

<%@ include file="header.jsp" %>
<h2>${course == null ? 'Add New Course' : 'Edit Course'}</h2>
<form action="${course == null ? pageContext.request.contextPath + '/courses?action=add' : pageContext.request.contextPath + '/courses?action=update'}" method="post">
    <input type="hidden" name="id" value="${course.id}">
    <div class="form-group">
        <label for="code">Course Code:</label>
        <input type="text" id="code" name="code" value="${course.code}" required />
    </div>
    <div class="form-group">
        <label for="name">Course Name:</label>
        <input type="text" id="name" name="name" value="${course.name}" required />
    </div>
    <div class="form-group">
        <label for="description">Description:</label>
        <textarea id="description" name="description">${course.description}</textarea>
    </div>
    <div class="form-group">
        <label for="credits">Credits:</label>
        <input type="number" id="credits" name="credits" value="${course.credits}" required />
    </div>
    <button type="submit" class="btn">${course == null ? 'Add Course' : 'Update Course'}</button>
</form>
<%@ include file="footer.jsp" %>
