<%-- 
    Document   : result
    Created on : 2018-4-1, 19:07:25
    Author     : srx
P   PS          :搜索结果返回给这个页面
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.util.*,bean.Location" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Search Result!</h1>
        <%
    ArrayList locationlist=(ArrayList)request.getAttribute("locationlist");
   %>
   <table align="center">
       <tr>
            <th>Lid</th>
            <th>County是县不是country哦～</th>
            <th>Zip_Code</th>
        </tr>
       <%for(int i=0;i<locationlist.size();i++){
        Location lc=(Location)locationlist.get(i);%>
        <tr><th><%=lc.getLid() %></th>
        <th><%=lc.getCounty() %></th>
        <th><%=lc.getZip_Code() %></th>
        <th><a href="example/normalSearch.jsp">back to search</a></th>
         <% 
        } %>
   </table>
 
 
    </body>
</html>
