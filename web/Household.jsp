<%--
  Created by IntelliJ IDEA.
  User: Khor Jia Cheng
  Date: 30/12/2020
  Time: 1:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<html>
<head>
    <title>Household Appliances</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="C:\Users\Khor Jia Cheng\Desktop\202009\Java EE\Project\CSS\style1.css">
</head>
<body>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/forum", "root","123456767");
    Statement stm = conn.createStatement();
    ResultSet rs = stm.executeQuery("select * from product WHERE product_category = Household Appliances");
%>
<div class="container">
    <div class="navbar">
        <div class="logo">
            <img src="http://www.xmu.edu.my/_upload/tpl/08/9f/2207/template2207/htmlRes/xxde_022.png" style="background:lightblue" width="150px" />
        </div>
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Marketplace</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">FAQ</a></li>
                <li><a href="#">Login</a></li>
            </ul>
        </nav>
    </div>
</div>

<div class="row">
    <div class="top">
        <h1 style="font-size:50px ">ALL PRODUCT</h1>
    </div>
</div>
<div class="btn-container">
    <a href="#" class = "btn">Sell Things?</a>
</div>
<div class="row">
    <div class="product">
        <div class="pro-con">
            <a href = "household-details.html">
                <%=rs.getBlob("product_pic")%>
            </a>
        </div>
        <h3 style="text-align: center;"><%=rs.getInt("product_name")%></h3>
        <p><%=rs.getDouble("price")%></p>
    </div>
    <div class="product">
        <div class="pro-con">
            <%=rs.getBlob("product_pic")%>
        </div>
        <h3 style="text-align: center;"><%=rs.getInt("product_name")%></h3>
        <p><%=rs.getDouble("price")%></p>
    </div>
    <div class="product">
        <div class="pro-con">
            <%=rs.getBlob("product_pic")%>
        </div>
        <h3 style="text-align: center;"><%=rs.getInt("product_name")%></h3>
        <p><%=rs.getDouble("price")%></p>
    </div>
    <div class="product">
        <div class="pro-con">
            <%=rs.getBlob("product_pic")%>
        </div>
        <h3 style="text-align: center;"><%=rs.getInt("product_name")%></h3>
        <p><%=rs.getDouble("price")%></p>
    </div>
</div>
<div class="row">
    <div class="product">
        <div class="pro-con">
            <%=rs.getBlob("product_pic")%>
        </div>
        <h3 style="text-align: center;"><%=rs.getInt("product_name")%></h3>
        <p><%=rs.getDouble("price")%></p>
    </div>
    <div class="product">
        <div class="pro-con">
            <%=rs.getBlob("product_pic")%>
        </div>
        <h3 style="text-align: center;"><%=rs.getInt("product_name")%></h3>
        <p><%=rs.getDouble("price")%></p>
    </div>
    <div class="product">
        <div class="pro-con">
            <%=rs.getBlob("product_pic")%>
        </div>
        <h3 style="text-align: center;"><%=rs.getInt("product_name")%></h3>
        <p><%=rs.getDouble("price")%></p>
    </div>
    <div class="product">
        <div class="pro-con">
            <%=rs.getBlob("product_pic")%>
        </div>
        <h3 style="text-align: center;"><%=rs.getInt("product_name")%></h3>
        <p><%=rs.getDouble("price")%></p>
    </div>
</div>
<div class="row">
    <div class="load-btn">
        Load More
    </div>
</div>
</body>
</html>