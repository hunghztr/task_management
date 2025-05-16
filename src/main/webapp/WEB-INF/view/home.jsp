<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách công việc</title>
    <!-- Tailwind CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 font-sans leading-normal tracking-normal p-6">

<div class="max-w-4xl mx-auto bg-white shadow-md rounded-lg p-6">
    <h2 class="text-2xl font-bold text-center text-blue-700 mb-6"> Danh sách công việc</h2>

    <table class="min-w-full table-auto border-collapse border border-gray-300">
        <thead class="bg-blue-100 text-gray-800">
        <tr>
            <th class="border border-gray-300 px-4 py-2">ID</th>
            <th class="border border-gray-300 px-4 py-2">Tiêu đề</th>
            <th class="border border-gray-300 px-4 py-2">Hoàn thành?</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="todo" items="${todos}">
            <tr class="hover:bg-gray-100">
                <td class="border border-gray-300 px-4 py-2 text-center">${todo.id}</td>
                <td class="border border-gray-300 px-4 py-2">${todo.title}</td>
                <td class="border border-gray-300 px-4 py-2 text-center">
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
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
