<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Task</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen flex items-center justify-center">

<div class="bg-white p-8 rounded shadow-md w-full max-w-md">
    <h2 class="text-2xl font-bold mb-6 text-center">Edit Task</h2>

    <form:form action="/task-update" method="post" modelAttribute="task" class="space-y-4">

        <!-- ID thường là không sửa nên để readonly hoặc hidden -->
        <div>
            <form:input path="id" cssClass="w-full border border-gray-300 rounded px-3 py-2 bg-gray-100 hidden" readonly="true"/>
        </div>

        <div>
            <form:label path="title" cssClass="block text-gray-700 font-medium mb-1">Title</form:label>
            <form:input path="title" cssClass="w-full border border-gray-300 rounded px-3 py-2"/>
        </div>

        <div>
            <form:label path="description" cssClass="block text-gray-700 font-medium mb-1">Description</form:label>
            <form:textarea path="description" cssClass="w-full border border-gray-300 rounded px-3 py-2" rows="4"/>
        </div>

        <div class="flex items-center">
            <form:checkbox path="completed" cssClass="mr-2"/>
            <form:label path="completed" cssClass="text-gray-700 font-medium">Is Completed</form:label>
        </div>

        <div>
            <input type="submit" value="Update Task"
                   class="w-full bg-green-500 hover:bg-green-600 text-white font-semibold py-2 px-4 rounded"/>
        </div>

    </form:form>
</div>

</body>
</html>
