<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create Task</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen flex items-center justify-center">

<div class="bg-white p-8 rounded shadow-md w-full max-w-md">
    <h2 class="text-2xl font-bold mb-6 text-center">Create New Task</h2>

    <form:form action="task-create" method="post" modelAttribute="task" class="space-y-4">

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
            <input type="submit" value="Create Task"
                   class="w-full bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded"/>
        </div>

    </form:form>
</div>

</body>
</html>
