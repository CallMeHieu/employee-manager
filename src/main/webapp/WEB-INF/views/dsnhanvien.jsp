<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Nguyen Van Hieu
  Date: 4/11/2023
  Time: 9:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách nhân viên</title>
    <!-- Nạp các file CSS của Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

<div class="container">
    <h1>DANH SÁCH NHÂN VIÊN</h1>
    <h3>Tổng số nhân viên ${totalEmployee}</h3>
    <div class="btn-group btn-group-sm mb-3" role="group" aria-label="Basic example">
        <button type="button" class="btn btn-primary">Thêm nhân viên</button>
        <button type="button" class="btn btn-danger">Xóa</button>
    </div>

    <table class="table table-bordered table-hover">
        <thead class="table-success">
        <tr>
            <th>Sửa</th>
            <th>Chọn</th>
            <th>Mã NV</th>
            <th>Họ tên</th>
            <th>Ngày sinh</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${employeeList}" var="employee">
            <tr>
                <td><button class="btn btn-primary">Sửa</button></td>
                <td><input type="checkbox" name="selectedRow"></td>
                <td><a href="/nhan-vien/${employee.id}">${employee.id}</a></td>
                <td>${employee.name}</td>
                <td>${employee.birthday.date}/${employee.birthday.month+1}/${employee.birthday.year+1900}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<!-- Nạp các file JavaScript của Bootstrap -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
