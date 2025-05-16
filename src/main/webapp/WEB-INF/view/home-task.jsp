<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách công việc</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 font-sans leading-normal tracking-normal p-6">

<div class="max-w-5xl mx-auto bg-white shadow-md rounded-lg p-6">
    <div class="flex justify-between items-center mb-6">
        <h2 class="text-2xl font-bold text-blue-700">Danh sách công việc</h2>
        <!-- Nút thêm mới -->
        <a href="/admin/task-create" class="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded shadow">
            + Thêm công việc
        </a>
    </div>

    <table class="min-w-full table-auto border-collapse border border-gray-300">
        <thead class="bg-blue-100 text-gray-800">
        <tr>
            <th class="border border-gray-300 px-4 py-2">ID</th>
            <th class="border border-gray-300 px-4 py-2">Tiêu đề</th>
            <th class="border border-gray-300 px-4 py-2">Mô tả</th>
            <th class="border border-gray-300 px-4 py-2">Hoàn thành?</th>
            <th class="border border-gray-300 px-4 py-2">Hành động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="task" items="${tasks}">
            <tr class="hover:bg-gray-100">
                <td class="border border-gray-300 px-4 py-2 text-center">${task.id}</td>
                <td class="border border-gray-300 px-4 py-2">${task.title}</td>
                <td class="border border-gray-300 px-4 py-2">${task.description}</td>
                <td class="border border-gray-300 px-4 py-2 text-center">
                    <c:choose>
                        <c:when test="${task.completed}">
                            <span class="text-green-600 font-semibold">Hoàn thành</span>
                        </c:when>
                        <c:otherwise>
                            <span class="text-red-600 font-semibold">Chưa hoàn thành</span>
                        </c:otherwise>
                    </c:choose>
                </td>
                <td class="border border-gray-300 px-4 py-2 text-center">
                    <a href="/admin/task-update/${task.id}" class="text-blue-600 hover:text-blue-800 font-medium">Sửa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
