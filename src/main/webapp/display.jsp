<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 26/12/2024
  Time: 9:28 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông Tin Khách Hàng</title>
    <style>
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #f4f4f4;
        }
    </style>
</head>
<body>
<h1 style="text-align: center;">Thông Tin Khách Hàng</h1>
<table>
    <tr>
        <th>Tên Khách Hàng</th>
        <th>Ngày Sinh</th>
        <th>Địa Chỉ</th>
        <th>Ảnh</th>
    </tr>
    <tr>
        <td><%= request.getParameter("customer_name") %></td>
        <td><%= request.getParameter("dob") %></td>
        <td><%= request.getParameter("address") %></td>
        <td>
            <%
                String photo = request.getParameter("photo");
                if (photo != null) {
                    out.print(photo);
                } else {
                    out.print("Không có ảnh");
                }
            %>
        </td>
    </tr>
</table>
</body>
</html>
