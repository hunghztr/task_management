<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Task List</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 p-6">

<div class="max-w-4xl mx-auto bg-white shadow-md rounded-lg p-6">
    <h1 class="text-2xl font-bold mb-4 text-center">Danh sách Task</h1>

    <table class="min-w-full divide-y divide-gray-200">
        <thead class="bg-gray-50">
        <tr>
            <th class="px-4 py-2 text-left text-sm font-semibold text-gray-600">ID</th>
            <th class="px-4 py-2 text-left text-sm font-semibold text-gray-600">Tiêu đề</th>
            <th class="px-4 py-2 text-left text-sm font-semibold text-gray-600">Mô tả</th>
            <th class="px-4 py-2 text-left text-sm font-semibold text-gray-600">Hoàn thành</th>
        </tr>
        </thead>
        <tbody class="divide-y divide-gray-100 bg-white">
        <c:forEach var="task" items="${tasks}">
            <tr>
                <td class="px-4 py-2 text-sm text-gray-800">${task.id}</td>
                <td class="px-4 py-2 text-sm text-gray-800">${task.title}</td>
                <td class="px-4 py-2 text-sm text-gray-800">${task.description}</td>
                <td class="px-4 py-2 text-sm">
                            <span class="inline-block px-2 py-1 rounded-full text-xs font-medium
                                ${task.completed ? 'bg-green-200 text-green-800' : 'bg-red-200 text-red-800'}">
                                    ${task.completed ? 'Đã hoàn thành' : 'Chưa hoàn thành'}
                            </span>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
