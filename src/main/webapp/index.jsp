<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Nhập Thông Tin Khách Hàng</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
        .form-container {
            width: 400px;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .form-container h2 {
            margin-bottom: 20px;
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-group input, .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }
        .form-group input[type="file"] {
            padding: 5px;
        }
        .form-group button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            color: #fff;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }
        .form-group button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Nhập Thông Tin Khách Hàng</h2>
    <form action="display.jsp" method="POST">
        <div class="form-group">
            <label for="customer-name">Tên Khách Hàng:</label>
            <input type="text" id="customer-name" name="customer_name" placeholder="Nhập tên khách hàng" required>
        </div>
        <div class="form-group">
            <label for="dob">Ngày Sinh:</label>
            <input type="date" id="dob" name="dob" required>
        </div>
        <div class="form-group">
            <label for="address">Địa Chỉ:</label>
            <textarea id="address" name="address" rows="3" placeholder="Nhập địa chỉ" required></textarea>
        </div>
        <div class="form-group">
            <label for="photo">Ảnh:</label>
            <input type="file" id="photo" name="photo" accept="image/*" required>
        </div>
        <div class="form-group">
            <button type="submit">Gửi Thông Tin</button>
        </div>
    </form>
</div>
</body>
</html>