<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Nguyen Van Hieu
  Date: 4/11/2023
  Time: 12:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chi tiết nhân viên</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <h1>CHI TIẾT NHÂN VIÊN</h1>
            <div class="row">
                <div class="col-md-6">
                    <p>Mã NV:</p>
                    <p>Họ tên:</p>
                    <p>Giới tính:</p>
                    <p>Ngày sinh:</p>
                    <p>Địa chỉ:</p>
                    <p>Số điện thoại:</p>
                    <p>Phòng ban:</p>
                    <p>Chức vụ:</p>
                    <p>Lương cơ bản:</p>
                </div>
                <div class="col-md-6">
                    <p>${employee.id}</p>
                    <p>${employee.name}</p>
                    <c:if test="${employee.male == true}">
                        <p>Nam</p>
                    </c:if>
                    <c:if test="${employee.male == false}">
                        <p>Nữ</p>
                    </c:if>
                    <p>${employee.birthday.date}/${employee.birthday.month+1}/${employee.birthday.year+1900}</p>
                    <p>${employee.address}</p>
                    <p>${employee.phone}</p>
                    <p>${employee.department}</p>
                    <p>${employee.title}</p>
                    <p>${employee.wageRale}</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <a href="/nhan-vien/danh-sach-nhan-vien" class="btn btn-info">Danh sách nhân viên</a>
                </div>
                <div class="col-md-8">
                    <a href="#" class="btn btn-warning">Sửa</a>
                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>
