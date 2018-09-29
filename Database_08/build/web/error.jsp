<%-- 
    Document   : result
    Created on : 2018-4-1, 19:07:25
    Author     : srx
    PS          :ERROR页
--%>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
    <title><s:text name="Error.message"/></title>
    <meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}

h1 { text-align: center; }
            
.button5 {
    background-color: black;
    color: white;
    border: 2px solid #555555;
}

.button5:hover {
    background-color: white;
    color: black;
}
</style>
</head>

<body class="w3-light-grey">
        <!-- Header -->
        <header> 
            <img class="w3-image" src="https://upload.wikimedia.org/wikipedia/commons/a/ad/Charleston%2C_WV%2C_USA_banner_Eugene_A._Carter_Memorial_Bridge_.jpg" alt="bridge2" style="width:100%" > 
        </header>
        <!-- Page content -->
        <div class="w3-light-grey">
            <h1> Sorry, we cannot find the result. </h1>                     
            <h1> Please try again. </h1>  
            <button class="button button5"><a href="normalSearch.jsp">Back</a></button>
        </div>
</body>
</html>

