<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thêm công việc mới</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">

<div class="bg-white shadow-md rounded px-8 pt-6 pb-8 w-full max-w-md">
    <h2 class="text-xl font-bold text-blue-700 mb-6 text-center">➕ Thêm công việc mới</h2>

    <form:form method="post" modelAttribute="todo" action="/create-todo">
        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2">Id:</label>
            <form:input path="id" cssClass="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"/>
            <form:errors path="id" cssClass="text-red-500 text-sm mt-1"/>
        </div>
        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2">Tiêu đề:</label>
            <form:input path="title" cssClass="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"/>
            <form:errors path="title" cssClass="text-red-500 text-sm mt-1"/>
        </div>

        <div class="mb-4 flex items-center">
            <form:checkbox path="completed" cssClass="mr-2"/>
            <label class="text-gray-700 text-sm font-medium">Hoàn thành</label>
        </div>

        <div class="flex justify-between">
            <button type="submit"
                    class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">
                Lưu
            </button>

            <a href="/todos"
               class="bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">
                Huỷ
            </a>
        </div>

    </form:form>
</div>

</body>
</html>
