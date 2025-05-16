<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>


<html>
<head>
    <title>Todo Detail</title>
    <!-- Thêm link tới Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-800 font-sans">
<div class="max-w-3xl mx-auto p-6 bg-white rounded-lg shadow-lg mt-10">
    <h1 class="text-3xl font-bold text-center text-blue-600 mb-6">Todo Detail</h1>

    <!-- Hiển thị chi tiết Todo -->
    <table class="min-w-full table-auto">
        <thead>
        <tr>
            <th class="px-4 py-2 text-left font-semibold text-gray-700">ID</th>
            <th class="px-4 py-2 text-left font-semibold text-gray-700">Title</th>
            <th class="px-4 py-2 text-left font-semibold text-gray-700">Completed</th>
        </tr>
        </thead>
        <tbody>
        <tr class="border-b hover:bg-gray-50">
            <td class="px-4 py-2 text-gray-600">${todo.id}</td>
            <td class="px-4 py-2 text-gray-600">${todo.title}</td>
            <td class="px-4 py-2 text-center">
                <c:choose>
                    <c:when test="${todo.completed}">
                        <span class="text-green-600 font-semibold">Hoàn thành</span>
                    </c:when>
                    <c:otherwise>
                        <span class="text-red-600 font-semibold">Chưa hoàn thành</span>
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
