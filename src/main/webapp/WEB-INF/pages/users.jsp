<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- подключается JSTL core -->
<html>
<head>
    <title>Users</title>
    <style>
        div {
            border: burlywood 5px solid;
            border-radius: 5%;
            width: 500px;
        }
    </style>
</head>
<body>
<div>
    <h2>Users</h2>
    <table>
        <tr>

            <th>id</th>
            <th>name</th>
            <th>lastName</th>
            <th>age</th>

        </tr>
        <c:forEach var="user" items="${usersList}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.lastName}</td>
                <td>${user.age}</td>
                <td>
                    <a href="/task2312_war_exploded/edit/${user.id}">edit</a>
                    <a href="/task2312_war_exploded/delete/${user.id}">delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <h2>Add</h2>
    <c:url value="/add" var="add"/>
    <a href="${add}">Add new user</a>
</div>

</body>
</html>